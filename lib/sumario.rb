require 'prawn'
require 'date'
require_relative 'causa'
require_relative 'diligencia'
require_relative 'constantes'

class Sumario
    
    include Constantes
    
    attr_reader :sumario_pdf, :fecha_inicio, :identacion, :dependencia, :manejador_const, :manejador_f8
    attr_accessor :contexto, :causa
    
    def initialize(args)
        args = valores_por_defecto.merge(args)
        @fecha_inicio = args[:fecha_inicio]
        @identacion = Prawn::Text::NBSP
        @sumario_pdf = Prawn::Document.new(page_size: args[:page_size], left_margin: args[:left_margin], right_margin: args[:right_margin], top_margin: args[:top_margin], bottom_margin: args[:bottom_margin])
        sumario_pdf.font(args[:fuente], size: args[:tamanio])
        @manejador_const = Constancia.new(self)
        @manejador_f8 = F8.new(self)
    end
    
    def valores_por_defecto
        {fecha_inicio: DateTime.now.year.to_s + ' de ' + Diccionario_meses[DateTime.now.month] + ' de ' + DateTime.now.year.to_s,
         page_size: "LEGAL",
         left_margin: 0,
         right_margin: 0,
         top_margin: 0,
         bottom_margin: 0,
         fuente: 'Times-Roman',
         tamanio: 12,
         dependencia: 'Departamento UNIDAD FEDERAL DE INVESTIGACIONES ESPECIALES'
         }
    end
    
    def generar_caratula(contexto_nuevo)
        
    end
    
    def generar_f8(contexto_nuevo)
        
        @contexto = contexto_nuevo        
        manejador_f8.calcular_carillas_cuerpo.each { |c| self.send(c[0], c[1])}
        
    end
    
    def generar_constancia(contexto_nuevo)
        
        @contexto = contexto_nuevo        
        manejador_const.calcular_carillas_cuerpo.each { |c| self.send(c[0], c[1])}
        
    end
    
    
    def generar_cuerpo_anverso(cuerpo)
        
        generar_medalla_foliador
        
        sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => 5)

        end
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_anverso_final(cuerpo)
        
        generar_medalla_foliador
        
        sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => 5)
            
            #generar_firmas_constancia(contexto.instructor, contexto.secretario)

        end
        
        sumario_pdf.start_new_page
        
        generar_sigue_foja_siguiente
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_reverso(cuerpo)
        
        sumario_pdf.bounding_box(Origen_Reverso, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => 5)
            

        end
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_reverso_final(cuerpo)
        
        sumario_pdf.bounding_box(Origen_Reverso, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => 5)
            
            #generar_firmas_constancia(contexto.instructor, contexto.secretario)
            

        end
        
        sumario_pdf.start_new_page
        
        
    end
    
    def generar_sigue_foja_siguiente
        
        sumario_pdf.bounding_box(Origen_Reverso_Foja_Siguiente, :width => Ancho_Pagina , :height => (Alto_Pagina/2)) do
            
            sumario_pdf.text("<b>-///-SIGUE A FOJA SIGUIENTE DILIGENCIA DE LA INSTRUCCION</b>", :inline_format => true)
            
            #sumario_pdf.move_down 20
            #generar_firmas_constancia(contexto.instructor, contexto.secretario)
            

        end
        
    end

    def generar_vista_fotografica(imagen, titulo)

      generar_foliador([550,970], [50,50])

      sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do

        sumario_pdf.move_down 50
        
        sumario_pdf.image(imagen, :fit => [Ancho_Pagina, Ancho_Pagina])

        sumario_pdf.move_down 10

        sumario_pdf.text(titulo, :inline_format => true, :align => :justify)

        sumario_pdf.move_down 150

        generar_queda_agregado([(Ancho_Pagina/2) - DIM_MEDALLA[0]/2, sumario_pdf.cursor + DIM_MEDALLA[1]/2])


      end


      sumario_pdf.start_new_page
      generar_medalla_cruce

    end

    def generar_medalla_cruce

      generar_medalla([(LEGAL[0]/2) - DIM_MEDALLA[0]/2, (LEGAL[1]/2) + DIM_MEDALLA[1]/2], DIM_MEDALLA)

      sumario_pdf.stroke_line [0,0],[280,450]
      sumario_pdf.stroke_line [350,550], LEGAL

      sumario_pdf.start_new_page

    end



    def generar_queda_agregado(origen)

      sumario_pdf.text("<b>QUEDA AGREGADO A SUS ANTECEDENTES. CONSTE. </b>", :inline_format => true, :align => :center)

      generar_medalla(origen, DIM_MEDALLA)

    end
            
            
    
    def guardar_sumario(archivo_sumario)
        sumario_pdf.render_file(archivo_sumario)
    end
    
    def generar_medalla(origen, tamanio)
    
        sumario_pdf.image('/home/alatriste/programacion/ruby/sumarios/data/medalla.png', :at => origen, :fit => tamanio)
    
    end
    
    def generar_foliador(origen, tamanio)
        
        sumario_pdf.image('/home/alatriste/programacion/ruby/sumarios/data/folio.png', :at => origen, :fit => tamanio)
        
    end
    
    def generar_medalla_foliador
        
        generar_foliador([550,970], [50,50])
        generar_medalla([10,930], DIM_MEDALLA)
        
    end
    
    

   
    def generar_firmas_constancia(instructor, secretario)
        
        ancho_instructor = sumario_pdf.width_of(instructor.ancho_firma, :size => 8)
        alto_instructor = sumario_pdf.height_of(instructor.alto_firma, :size => 8)
        
        ancho_secretario = sumario_pdf.width_of(secretario.ancho_firma, :size => 8)
        alto_secretario = sumario_pdf.height_of(secretario.alto_firma, :size => 8)
        
        
        generar_distancia_firmas_constancia(alto_instructor, alto_secretario)
        
        generar_firma_instructor(instructor, ancho_instructor, alto_instructor)
        
        sumario_pdf.move_down 20
        
        generar_firma_secretario(secretario, ancho_secretario, alto_secretario)
            

    end
    
    def generar_distancia_firmas_constancia(alto_instructor, alto_secretario)
        
        espacio_libre = LEGAL[1] - sumario_pdf.cursor - (alto_instructor + alto_secretario + 20)
        
        puts espacio_libre
        
        if espacio_libre > 0
            sumario_pdf.move_down(espacio_libre/3)
        end
        
    end
    
    
    def generar_firma_instructor(instructor, ancho_instructor, alto_instructor)
        

        
        sumario_pdf.bounding_box([Ancho_Pagina - ancho_instructor, sumario_pdf.cursor], :width => ancho_instructor.ceil, :height => alto_instructor.ceil * 2) do
        
            sumario_pdf.font_size(8) do
            
                sumario_pdf.text( instructor.identificacion, :align => :center)
                sumario_pdf.text( instructor.cargo, :align => :center)
            
            end
        
        end
        
    end
    
    def generar_firma_secretario(secretario, ancho_secretario, alto_secretario)
        
        
        sumario_pdf.bounding_box([0, sumario_pdf.cursor], :width => ancho_secretario.ceil, :height => alto_secretario.ceil * 2) do
                
            sumario_pdf.font_size(8) do
            
                sumario_pdf.text( secretario.identificacion, :align => :center)
                sumario_pdf.text( secretario.cargo, :align => :center)
                    
            end
        end
        
    end
    
end

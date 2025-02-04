require 'prawn'
require 'date'
require_relative 'sumario'
require_relative 'diligencia'
require_relative 'constantes'
require_relative 'documento'

class Sumario
    
    include Constantes
    
    attr_reader :sumario_pdf, :fecha_inicio, :identacion, :dependencia, :manejador_const, :manejador_f8, :manejador_documento_ext, :manejador_documento_int
    attr_accessor :contexto, :sumario
    
    def initialize(args)
        args = valores_por_defecto.merge(args)
        @fecha_inicio = args[:fecha_inicio]
        @identacion = Prawn::Text::NBSP
        @sumario_pdf = Prawn::Document.new(page_size: args[:page_size], left_margin: args[:left_margin], right_margin: args[:right_margin], top_margin: args[:top_margin], bottom_margin: args[:bottom_margin])
        sumario_pdf.font(args[:fuente], size: args[:tamanio])
        @manejador_const = Constancia.new(self)
        @manejador_f8 = F8.new(self)
        @manejador_documento_ext = Documento.new(self)
        @manejador_documento_int = DocumentoInterno.new(self)
    end
    
    def valores_por_defecto
        {fecha_inicio: DateTime.now.year.to_s + ' de ' + Diccionario_meses[DateTime.now.month] + ' de ' + DateTime.now.year.to_s,
         page_size: "LEGAL",
         left_margin: 0,
         right_margin: 0,
         top_margin: 0,
         bottom_margin: 0,
         fuente: 'Times-Roman',
         tamanio: 13,
         dependencia: 'Departamento UNIDAD FEDERAL DE INVESTIGACIONES ESPECIALES'
         }
    end
    
    def generar_caratula(contexto_nuevo)
        
    end

    
    def generar_f8(contexto_nuevo)
        
        @contexto = contexto_nuevo        
        manejador_f8.generar_carillas_cuerpo
        
    end
    
    def generar_constancia(contexto_nuevo)
        
        @contexto = contexto_nuevo        
        manejador_const.generar_carillas_cuerpo
        
    end

    def generar_documento_externo(pdf_path)

      manejador_documento_ext.generar_documento(pdf_path)

    end

    def generar_documento_interno(pdf_path)

      manejador_documento_int.generar_documento(pdf_path)

    end
    
    def generar_cuerpo_anverso(cuerpo)
        
        generar_medalla_foliador
        
        sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => INTERLINEADO)

        end
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_anverso_final(cuerpo)
        
        generar_medalla_foliador
        
        sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => INTERLINEADO)
            
            #generar_firmas_constancia(contexto.instructor, contexto.secretario)

        end
        
        sumario_pdf.start_new_page
        
        generar_sigue_foja_siguiente
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_reverso(cuerpo)
        
        sumario_pdf.bounding_box(Origen_Reverso, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => INTERLINEADO)
            

        end
        
        sumario_pdf.start_new_page
        
    end
    
    def generar_cuerpo_reverso_final(cuerpo)
        
        sumario_pdf.bounding_box(Origen_Reverso, :width => Ancho_Pagina , :height => Alto_Pagina) do
            
            sumario_pdf.text(cuerpo, :align => :justify, :inline_format => true, :leading => INTERLINEADO)
            
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

    def generar_pagina_documento_externo(imagen)


      sumario_pdf.image(imagen, :fit => LEGAL)

      generar_foliador(ORIGEN_FOLIADOR, DIM_FOLIADOR)
      
      sumario_pdf.start_new_page

      sumario_pdf.move_down LEGAL[1]/2

      generar_queda_agregado([(LEGAL[0]/2) - DIM_MEDALLA[0]/2, sumario_pdf.cursor + DIM_MEDALLA[1]/2])

      sumario_pdf.start_new_page

    end

    def generar_pagina_impar_documento_interno(imagen)

      sumario_pdf.image(imagen, :fit => LEGAL)

      generar_medalla_foliador

      sumario_pdf.start_new_page

    end

    def generar_pagina_par_documento_interno(imagen)

      sumario_pdf.image(imagen, :fit => LEGAL)

      generar_queda_agregado_vertical([LEGAL[0] - DIM_MEDALLA_VER[0], LEGAL[1]/2  + DIM_MEDALLA_VER[1]/2])

      sumario_pdf.start_new_page

    end

    def generar_pagina_impar_final_documento_interno(imagen)

      generar_pagina_impar_documento_interno(imagen)

      sumario_pdf.move_down LEGAL[1]/2

      generar_queda_agregado([(LEGAL[0]/2) - DIM_MEDALLA[0]/2, sumario_pdf.cursor + DIM_MEDALLA[1]/2])

      sumario_pdf.start_new_page

    end


    def generar_vista_fotografica(imagen, titulo)

      generar_foliador(ORIGEN_FOLIADOR, DIM_FOLIADOR)

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

    def generar_soporte_digital(titulo)

      generar_foliador(ORIGEN_FOLIADOR, DIM_FOLIADOR)

      sumario_pdf.bounding_box(Origen, :width => Ancho_Pagina , :height => Alto_Pagina) do

        sumario_pdf.text(titulo, :inline_format => true, :align => :justify)

        sumario_pdf.move_down Alto_Pagina * 0.6

        sumario_pdf.text("<b>QUEDA AGREGADO A SUS ANTECEDENTES. CONSTE. </b>", :inline_format => true, :align => :center)

      end


      sumario_pdf.start_new_page
      generar_medalla_cruce

    end


    def generar_medalla_cruce

      generar_medalla([(LEGAL[0]/2) - DIM_MEDALLA[0]/2, (LEGAL[1]/2) + DIM_MEDALLA[1]/2], DIM_MEDALLA)

      sumario_pdf.stroke_line [0, Origen_Reverso[1]], [Origen_Reverso[0], Origen_Reverso[1]]
      sumario_pdf.stroke_line [Origen_Reverso[0], Origen_Reverso[1]], [260,550]
      sumario_pdf.stroke_line [325,445], Final_Reverso
      sumario_pdf.stroke_line Final_Reverso, [LEGAL[0], Final_Reverso[1]]

      sumario_pdf.start_new_page

    end



    def generar_queda_agregado(origen)

      sumario_pdf.text("<b>QUEDA AGREGADO A SUS ANTECEDENTES. CONSTE. </b>", :inline_format => true, :align => :center)

      generar_medalla(origen, DIM_MEDALLA)

    end

    def generar_queda_agregado_vertical(origen)

        sumario_pdf.draw_text("QUEDA AGREGADO A SUS ANTECEDENTES. CONSTE.", :at => ORIGEN_QA_VER_LEGAL, :style => :bold, :rotate => 90, :rotate_around => :center)
        

        sumario_pdf.image(PATH_DATA + 'medalla_vertical.png', :at => origen, :fit => DIM_MEDALLA_VER)
        
    end
            
            
    
    def guardar_sumario(archivo_sumario)
        sumario_pdf.render_file(archivo_sumario)
    end
    
    def generar_medalla(origen, tamanio)
    
        sumario_pdf.image(PATH_DATA + 'medalla.png', :at => origen, :fit => tamanio)
    
    end
    
    def generar_foliador(origen, tamanio)
        
        sumario_pdf.image(PATH_DATA + 'folio.png', :at => origen, :fit => tamanio)
        
    end
    
    def generar_medalla_foliador
        
      generar_foliador(ORIGEN_FOLIADOR, DIM_FOLIADOR)
                        
      generar_medalla(ORIGEN_MEDALLA_IMPAR, DIM_MEDALLA)
        
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

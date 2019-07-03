require 'jrubyfx'
require 'date'
require_relative 'sumario'
require_relative 'cargadorCSV'
require_relative 'constantes'
require_relative 'contexto'
java_import java.time.LocalDate
java_import javafx.collections.FXCollections


fxml_root(Constantes::PATH_DATA, Constantes::JAR_PATH_DATA)


class SumarioFX < JRubyFX::Application
	def start(stage)
		with(stage, title: "Diligencias PFA", width: 800, height: 600) do
		  fxml InicioFXControlador
		  show
		end
	end
end

class InicioFXControlador
  include JRubyFX::Controller
  fxml "inicio.fxml"
  
  def salir
     @boton_salir.get_scene.get_window.close
  end
  
  def seleccionar_sumarios
      @campo_archivo_sumario.text = SelectorArchivos.new(stage).seleccionar_archivo
  end
  
  def seleccionar_personal
      @campo_archivo_personal.text = SelectorArchivos.new(stage).seleccionar_archivo
  end
  
  def generar_pdf
      if @campo_archivo_sumario.text.empty?
          @etiqueta_archivo_sumarios.text = 'CAMPO REQUERIDO - Archivo sumarios'
      else
          @etiqueta_archivo_sumarios.text = 'Archivo CSV'
      end
      
      
      if @campo_archivo_personal.text.empty?
          @etiqueta_archivo_personal.text = 'CAMPO REQUERIDO - Archivo personal'
      else
          @etiqueta_archivo_personal.text = 'Archivo CSV'
      end
      
      crear_pdf unless @campo_archivo_sumario.text.empty? || @campo_archivo_personal.text.empty?
  end
  
  def crear_pdf

      csv = CargadorCSV.new(@campo_archivo_sumario.text, @campo_archivo_personal.text)
      
      causas = csv.crear_sumarios_desde_csv
      personal = csv.crear_personal_desde_csv
     
      DiligenciasFXControlador.load_into @campo_archivo_sumario.get_scene.get_window,
              initialize: [causas, personal]
      
      
  end
  
end



class DiligenciasFXControlador
  include JRubyFX::Controller
  attr_accessor :sumario_pdf
  fxml "diligencias.fxml"
  
  def initialize(causas, personal)
      @sumario_pdf = Sumario.new({})
      
      coleccion_personal_fx = FXCollections.observableArrayList(personal.to_java)
      #@box_instructor_constancia.set_items(coleccion_personal_fx)
      #@box_secretario_constancia.set_items(coleccion_personal_fx)
      #@box_instructor_f8.set_items(coleccion_personal_fx)
      #@box_secretario_f8.set_items(coleccion_personal_fx)
      @box_declarante_f8.set_items(coleccion_personal_fx)
      @box_declarante_f8.set_value(coleccion_personal_fx.first)
      @fecha_constancia.set_value LocalDate.now
      @fecha_f8.set_value LocalDate.now
  end
  
  def seleccionar_destino
      @campo_archivo_destino.text = SelectorDirectorio.new(stage).seleccionar_archivo
  end
  
  def cancelar_diligencias
     @boton_cancelar_diligencias.get_scene.get_window.fxml InicioFXControlador
  end
  
  def generar_constancia
      
      contexto = {
          secretario: @box_declarante_f8.value,
          fecha: fecha_java_a_ruby(@fecha_constancia.value),
          titulo: @titulo_constancia.text,
          texto: @campo_texto_constancia.text,
          instructor: @box_declarante_f8.value
            }
      sumario_pdf.generar_constancia(Contexto.new(contexto))
  end
  
  
  def generar_f8
      contexto = {
          secretario: @box_declarante_f8.value,
          declarante: @box_declarante_f8.value,
          fecha: fecha_java_a_ruby(@fecha_f8.value),
          texto: @campo_texto_f8.text,
          instructor: @box_declarante_f8.value
            }
      sumario_pdf.generar_f8(Contexto.new(contexto))
  end
  
  def guardar_diligencias
      
      
      
      if @campo_archivo_destino.text.empty?
          @etiqueta_archivo_destino.text = 'CAMPO REQUERIDO - Carpeta destino'
      else
          @etiqueta_archivo_destino.text = 'Carpeta destino'
      end
      
      
      if @campo_nombre_archivo.text.empty?
          @etiqueta_nombre_archivo.text = 'CAMPO REQUERIDO - Nombre archivo'
      else
          @etiqueta_nombre_archivo.text = 'Nombre archivo'
      end
      
      
      unless @campo_archivo_destino.text.empty? || @campo_nombre_archivo.text.empty?
          sumario_pdf.guardar_sumario(@campo_archivo_destino.text + '/' + @campo_nombre_archivo.text + '.pdf')
          @campo_nombre_archivo.get_scene.get_window.fxml InicioFXControlador
      end
  end
  
  
  def fecha_java_a_ruby(java_date)
      Date.new(java_date.get_year, java_date.get_month_value, java_date.get_day_of_month)
  end

  def seleccionar_imagen

    @campo_seleccionar_imagen.text = SelectorImagen.new(stage).seleccionar_archivo

  end

  def generar_vista

      if @campo_seleccionar_imagen.text.empty?
          @etiqueta_seleccionar_imagen.text = 'CAMPO REQUERIDO - Ubicacion imagen'
      else
          @etiqueta_seleccionar_imagen.text = ''
      end

      unless @campo_seleccionar_imagen.text.empty? 
        sumario_pdf.generar_vista_fotografica(@campo_seleccionar_imagen.text, @campo_descripcion_vista.text.upcase)
      end

  end


end




class SelectorArchivos
    
    attr_reader :file_chooser, :stage, :archivo
    
    def initialize(stage)
        
        @file_chooser = javafx::stage::FileChooser.new
        @stage = stage
        file_chooser.set_title 'Seleccionar CSV'
        filtro = javafx::stage::FileChooser::ExtensionFilter.new('Texto CSV (.CSV)', '*.csv')
        file_chooser.get_extension_filters << filtro
        #file_chooser.set_selected_extension_filter filtro
    end
    
    def seleccionar_archivo
        mostrar
        path_archivo
    end
        
    def mostrar
        @archivo = file_chooser.show_open_dialog stage
    end
    
    def path_archivo
        archivo ? archivo.get_path : ''
    end
end

class SelectorImagen < SelectorArchivos

    def initialize(stage)

      @file_chooser = javafx::stage::FileChooser.new
      @stage = stage
      file_chooser.set_title 'Seleccionar imagen'
      filtro = javafx::stage::FileChooser::ExtensionFilter.new('Imagen (.jpg, .png)', '*.jpg', '*.png')
      file_chooser.get_extension_filters << filtro
  
    end

end


class SelectorDirectorio < SelectorArchivos
    
  
    def initialize(stage)
        
        @file_chooser = javafx::stage::DirectoryChooser.new
        @stage = stage
        @file_chooser.set_title 'Seleccionar Carpeta Destino'
    end
    
    def mostrar
        @archivo = file_chooser.show_dialog stage
    end
end

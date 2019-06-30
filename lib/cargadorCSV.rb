require 'date'
require 'csv'
require_relative 'causa'
require_relative 'personal'

class CargadorCSV
    attr_reader :archivo_sumarios, :archivo_personal
    
    def initialize(archivo_sumarios, archivo_personal)
        @archivo_sumarios = archivo_sumarios
        @archivo_personal = archivo_personal
        @sumarios = []
        @personal = []
    end

    
    def crear_sumarios_desde_csv
        
        sumarios = []
        CSV.foreach(archivo_sumarios) do |fila|
            sumarios << subir_fila_sumario(fila)
        end
        
        sumarios
    end
    
    def subir_fila_sumario(fila)
        args = generar_args_fila_sumario fila
        Causa.new(args)
    end
    
    
    def generar_args_fila_sumario(fila)
        {
            numero_sumario: fila[0],
            nro: fila[1],
            expediente: fila[2],
            caratula: fila[3],
            juzgado: fila[4],
            fiscalia: fila[5],
            fecha_inicio: fila[6],
            damnificados: fila[7],
            imputados: fila[8]
        }
    end
    

    
    def crear_personal_desde_csv
        
        personal = []
        CSV.foreach(archivo_personal) do |fila|
            personal << subir_fila_personal(fila)
        end
        
        personal
    end
    
    def subir_fila_personal(fila)
        args = generar_args_fila_personal fila
        Personal.new(args)
    end
    
    
    def generar_args_fila_personal(fila)
        {
            nombre: fila[1],
            lp: fila[2],
            jerarquia: fila[0],
            fecha_nacimiento: generar_fecha_nacimiento(fila[4]),
            cargo: fila[3],
            estado_civil: fila[5],
            sexo: fila[6],
        }
    end
    
    
    def generar_fecha_nacimiento(date_string)
        
        Date.strptime(date_string, '%d-%m-%Y')
        
    end
            
    
end


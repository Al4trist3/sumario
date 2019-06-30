require 'date'

class Personal
    attr_reader :nombre, :lp, :jerarquia, :fecha_nacimiento, :cargo, :estado_civil, :sexo
    
    def initialize(args)
        @nombre = args[:nombre]
        @lp = args[:lp]
        @jerarquia = args[:jerarquia]
        @fecha_nacimiento = args[:fecha_nacimiento]
        @cargo = args[:cargo]
        @estado_civil = args[:estado_civil]
        @sexo = args[:sexo]
    end
    
    def edad
        ahora = DateTime.now.to_date
        ahora.year - fecha_nacimiento.year - ((ahora.month > fecha_nacimiento.month || (ahora.month == fecha_nacimiento.month && ahora.day >= fecha_nacimiento.day)) ? 0 : 1)
    end
    
    def firma

        [identificacion, cargo]
        
    end
    

    def identificacion
        
        jerarquia + ' ' + nombre
        
    end
    
    
    def ancho_firma
        
        cargo_mayus = cargo.scan /\p{Upper}/
        identificacion_mayus = identificacion.scan /\p{Upper}/
        
        (cargo.size + cargo_mayus.size) > (identificacion.size + identificacion_mayus.size) ? cargo : identificacion
        
    end
    
    
    def alto_firma
        
        identificacion + '\n' + cargo
        
    end
    
    def to_s
        identificacion
    end
    
    
    
end

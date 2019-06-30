class Causa
    attr_reader :nro, :caratula, :juzgado, :expediente, :fiscalia, :fecha_inicio, :damnificados, :imputados, :numero_sumario
    
    def initialize(args)
        @nro = args[:nro]
        @caratula = args[:caratula]
        @juzgado = args[:juzgado]
        @fecha_inicio = args[:fecha_inicio]
        @expediente = args[:expediente]
        @fiscalia = args[:fiscalia]
        @damnificados = args[:damnificados]
        @imputados = args[:imputados]
        @numero_sumario = args[:numero_sumario]
    end
    
    def to_s
        'Sumario ' + numero_sumario
    end
    
    
end

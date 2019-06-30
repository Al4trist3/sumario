
class Contexto
    attr_reader :secretario, :fecha, :texto, :titulo, :instructor, :declarante
    
    def initialize(args)
        @secretario = args[:secretario]
        @instructor = args[:instructor]
        @texto = args[:texto]
        @fecha = args[:fecha]
        @titulo = args[:titulo]
        @declarante = args[:declarante]
    end
    
    
end

module Constantes
    
    
    Diccionario_meses = {1 => 'ENERO',
            2 => 'FEBRERO',
            3 => 'MARZO',
            4 => 'ABRIL',
            5 => 'MAYO',
            6 => 'JUNIO',
            7 => 'JULIO',
            8 => 'AGOSTO',
            9 => 'SEPTIEMBRE',
            10 => 'OCTUBRE',
            11 => 'NOVIEMBRE',
            12 => 'DICIEMBRE'}
    
    Margenes_Policiales = {
        left_margin: 113.3858268,
        right_margin: 42.51968505,
        top_margin: 113.3858268,
        bottom_margin: 70.866141732
        }

    INTERLINEADO = 5
    
    LEGAL = [612, 1008]
    Ancho_Pagina = LEGAL[0] - (Margenes_Policiales[:right_margin] + Margenes_Policiales[:left_margin])
    Alto_Pagina = LEGAL[1] - (Margenes_Policiales[:top_margin] + Margenes_Policiales[:bottom_margin])
    
    Origen = [Margenes_Policiales[:left_margin], LEGAL[1] - Margenes_Policiales[:top_margin]]
    Origen_Reverso = [Margenes_Policiales[:right_margin], LEGAL[1] - Margenes_Policiales[:top_margin]]
    Origen_Reverso_Foja_Siguiente = [Margenes_Policiales[:right_margin], LEGAL[1]/2]
    
    DIM_MEDALLA = [102,153]

    DIM_MEDALLA_VER = [153,102]

    DIM_FOLIADOR = [50,50]

    ORIGEN_QA_VER_LEGAL = [LEGAL[0] - 80 , (LEGAL[1]/2) - 150]


    PATH_DATA = File.expand_path('../data', __dir__) + '/'
    JAR_PATH_DATA = 'sumario/data/'
    
end

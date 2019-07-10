require_relative 'constantes'
require_relative 'manejador'

class Diligencia
    
    include Constantes
    include Manejador

    
    def generar_carillas_cuerpo
        
        
               
        carillas = dividir_cuerpo_en_carillas(texto_con_formato)
        
        carillas[0] = titulo_con_formato.concat(carillas[0])
        
        
        final = carillas.size - 1
        
        carillas.each_with_index  {|carilla, i|
          if ((i.even?) && (i == final))
            sumario.generar_cuerpo_anverso_final(carilla)
          elsif ((i.even?) && !(i == final))
            sumario.generar_cuerpo_anverso(carilla)
          elsif ((i.odd?) && (i == final))
            sumario.generar_cuerpo_reverso_final(carilla)
          else #((i.odd) && !(i == final))
            sumario.generar_cuerpo_reverso(carilla)
          end
        }
        
                        
    end
    
    def titulo_con_formato
        
       
    end
    
    
    
    def dividir_cuerpo_en_carillas(cuerpo)
        
        carillas = ['']
        
        #20221.847999999998 max sin titulo
        #19351 max con titulo
        #-///- 18
        
                
        cuerpo.split.inject('') {|sub_cuerpo, palabra|
                                         if sumario_pdf.width_of(sub_cuerpo + ' ' + palabra, :align => :justify, :inline_format => true, :leading => 5) > (carillas.size > 1 ? ancho_max : ancho_max_con_titulo)
                                        carillas << palabra
                                        sub_cuerpo = palabra                                                                                
                                        else
                                        carillas[carillas.length - 1] = sub_cuerpo + ' ' + palabra
                                end
                                        }
        
        carillas
        
    end
    
    
end



class Constancia < Diligencia
    
    def texto_con_formato
        
        fecha = contexto.fecha
        texto = contexto.texto
        
        cuerpos = "-///- la Ciudad Autonoma de Buenos Aires, Capital Federal de la Nación Argentina hoy día #{fecha.day.to_s} de #{Diccionario_meses[fecha.month]} del año #{fecha.year.to_s}, la Instrucción a los efectos legales hace <u><b>CONSTAR:</b></u> #{texto} <b>CONSTE.-</b>"
        
        cuerpos
        
    end
    
    
    def titulo_con_formato
        
        "<font size='16'><b><u>DILIGENCIA:</u></b></font>" + " " + "<font size='16'>#{contexto.titulo}</font>\n\n"
        
    end
    
    def ancho_max
        
        20221.847999999998
        
    end
    
    def ancho_max_con_titulo
        
        19351
        
    end
    
end



class F8 < Diligencia
    
    
    def titulo_con_formato
        
        "<font size='14'><b><u>DECLARACIÓN DEL:</u></b></font>" + " " + "<font size='14'>#{contexto.declarante.identificacion}</font>\n" + "<font size='14'><b><u>CUYA IDENTIDAD:</u></b></font>" + " " + "<font size='14'>CERTIFICA LA INSTRUCCION</font>\n\n"
        
    end
    

    def texto_con_formato
        
        fecha = contexto.fecha
        texto = contexto.texto
        declarante = contexto.declarante
        
        cuerpos = "-///- la Ciudad Autonoma de Buenos Aires, Capital Federal de la República Argentina, hoy día #{fecha.day.to_s} de #{Diccionario_meses[fecha.month]} del año #{fecha.year.to_s}, comparece ante la prevención una persona del sexo #{declarante.sexo} que instruida de las penas con que se castiga el falso testimonio y previo juramento que prestó en forma legal de acuerdo a sus creencias, prometió  decir la verdad en cuanto supiere y le fuere preguntado a lo que responde bajo la forma “LO JURO”,  ratificó ser y llamarse #{declarante.nombre}, de nacionalidad Argentina, de #{declarante.edad.to_s} años de edad, de estado #{declarante.estado_civil}, de ocupación #{declarante.jerarquia} de esta Policía Federal, con domicilio en Gurruchaga 2473 Cap. Fed., 4832-9116, jurisdicción policial de la Comisaría 14a de la Policía de la Ciudad de Buenos Aires. Acto seguido se le entera del contenido de los Artículos 79, 80 y 81 (Derechos de la Víctima y Testigo) de la Ley 23.984. Preguntado si conoce a las partes que figuran en las presentes actuaciones y si con respecto a ellas posee vínculos de parentesco o interés con las mismas o cualquier otra circunstancia que afecte su veracidad (Artículos 242, 243 y 244 del citado cuerpo legal), dice que NO existe causa que lo afecte. Invitado para que exponga sobre el hecho que se investiga <u><b>DECLARA:</b></u> #{texto} Es cuanto declara. Terminado el acto y leída la presente, se ratifico de todo su contenido, firmando por ante mí para constancia de que <b>CERTIFICO.-</b>"
        
        cuerpos
        
    end
    
    def ancho_max
        
        20221.847999999998
        
    end
    
    def ancho_max_con_titulo
        
        18120
        
    end
    
    
end
    

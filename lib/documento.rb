require 'tmpdir'
require "mini_magick"
require_relative "manejador"

class Documento

  include Manejador

  def generar_paginas_documento(imagenes)

    imagenes.each {|imagen_path|
      sumario.generar_pagina_documento_externo(imagen_path)
    }

  end


  def generar_documento(pdf_path)

    pdf = MiniMagick::Image.open(pdf_path)

    dir = Dir.mktmpdir("img")
    
    FileUtils.chmod(0777, dir)

   begin

     imagenes = []
    
     pdf.pages.each_with_index do |pag, i|
       MiniMagick::Tool::Convert.new do |convert|
         
         convert.density 150
         convert.quality 100
         convert << pag.path
         convert << "#{dir}/#{i}.png"

       end
       
       imagenes << "#{dir}/#{i}.png"

     end

     generar_paginas_documento(imagenes)

   ensure
     
     FileUtils.remove_entry(dir, true)
     pdf.destroy!
   
   end

  end


end

class DocumentoInterno < Documento
  
  def generar_paginas_documento(imagenes)

    final = imagenes.size
    
    imagenes.each.with_index(1)  {|imagen, i|
      if i.even?
        sumario.generar_pagina_par_documento_interno(imagen)
      elsif ((i.odd?) && (i == final))
        sumario.generar_pagina_impar_final_documento_interno(imagen)
      elsif i.odd?
        sumario.generar_pagina_impar_documento_interno(imagen)
      end
    }

  end 


end



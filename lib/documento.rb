require 'tmpdir'
require "mini_magick"
require_relative "manejador"

class Documento

  include Manejador

  def generar_paginas_documento(pdf_path)

    pdf = MiniMagick::Image.open(pdf_path)

    Dir.mktmpdir("img") {|dir|

      FileUtils.chmod(0777, dir)

      pdf.pages.each_with_index do |pag, i|
        MiniMagick::Tool::Convert.new do |convert|

          convert.density 150
          convert.quality 100
          convert << pag.path
          convert << "#{dir}/#{i}.png"

        end
        generar_pagina_documento("#{dir}/#{i}.png", i)
        #File.delete("#{dir}/#{i}.png") if File.exist?("#{dir}/#{i}.png")
      end

    }
    pdf.destroy!
  end

  def generar_pagina_documento(imagen_path, indice_pagina)

    sumario.generar_pagina_documento_externo(imagen_path)

  end




end


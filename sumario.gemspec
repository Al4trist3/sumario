Gem::Specification.new do |spec|
  spec.name = "sumario"
  spec.version = '0.1'
  spec.platform = Gem::Platform::RUBY
  spec.summary = "Genera diligencias sumarios"
  spec.files =  Dir.glob("{lib,data,bin,data/.jrubyfx_cache}/**/**/*") +
                ["sumario.gemspec", "Gemfile",
                 "COPYING", "LICENSE", "GPLv2", "GPLv3"]
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
  spec.required_rubygems_version = ">= 1.3.6"

  spec.authors = ["Eugenio Bayot"]
  spec.email = ["eglionel@gmail.com"]
  spec.licenses = ['RUBY', 'GPL-2', 'GPL-3']

  spec.add_development_dependency('jrubyfx')
  spec.add_development_dependency('jrubyfx-fxmlloader')
  spec.add_development_dependency('prawn')
  spec.add_development_dependency('mini_magick')
  spec.add_runtime_dependency('jrubyfx')
  spec.add_runtime_dependency('jrubyfx-fxmlloader')
  spec.add_runtime_dependency('prawn')
  spec.add_runtime_dependency('mini_magick')
  #spec.add_development_dependency('pdf-core')
  
  #spec.add_development_dependency('prawn-table')
  #spec.add_development_dependency('ttfunk')

  spec.homepage = "https://github.com/memos-pfa"
  spec.description = <<END_DESC
  Generador de diligencias con correspondientes sellos en formato pdf(constancias, F8, vistas, etc) para sumarios.
END_DESC
end
 

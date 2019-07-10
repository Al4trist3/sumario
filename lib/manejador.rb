
module Manejador 


  attr_reader :sumario


  def initialize(sumario)

    @sumario = sumario

  end

  def sumario_pdf

    sumario.sumario_pdf

  end

  def contexto

    sumario.contexto

  end

end

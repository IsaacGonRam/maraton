require 'csv'

class Question
  attr_accessor :pregunta, :respuesta
  def initialize(pregunta, respuesta)
    @pregunta = pregunta
    @respuesta = respuesta
  end
end

class Maraton
  def initialize
  
  end

  def preguntas
    array_new= []
    CSV.foreach("maraton_question.csv") do |row|
      producto = Question.new(row[0],row[1])
      array_new << producto
    end
    array_new
  end

  def analiza_respuesta(arreglo)
    array_new= []
    si_no = false
    CSV.foreach("maraton_question.csv") do |row|
      producto = Question.new(row[0],row[1])
      array_new << producto
    end
    array_new.each do |objeto|
      if arreglo[0] == objeto.pregunta && arreglo[1] == objeto.respuesta
        si_no = true
      end
    end
    si_no
  end

end
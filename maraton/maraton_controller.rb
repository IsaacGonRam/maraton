require_relative 'maraton_model.rb'
require_relative 'maraton_view.rb'

class Controller
  attr_accessor :maraton_model, :maraton_view

  def initialize
    @view = View.new
    @maraton = Maraton.new
    @view.bienvenida
    juego_maraton
    
  end

  def juego_maraton
    tamaño = (@maraton.preguntas.size) -1
    correct = 0
    incorrect = 0
    tamaño.times do |i|
      respuesta = ver_preguntas_respuestas(i)
      if respuesta == true
        @view.respuesta_correcta
        correct += 1
      else
        @view.respuesta_incorrecta
        incorrect += 1
      end
    end
    @view.total(correct,incorrect)
  end

  def ver_preguntas_respuestas(numero_pregunta)
    all_question = @maraton.preguntas
    res_array = @view.pregunta(all_question,numero_pregunta)
    yes_no = @maraton.analiza_respuesta(res_array)
  end


end

Controller.new
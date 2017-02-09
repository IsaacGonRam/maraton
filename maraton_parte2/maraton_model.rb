require 'csv'

class Question
  attr_accessor :pregunta, :opcion1, :opcion2, :opcion3, :respuesta
  def initialize(pregunta, opcion1, opcion2, opcion3,respuesta)
    @pregunta = pregunta
    @opcion1 = opcion1
    @opcion2 = opcion2
    @opcion3 = opcion3
    @respuesta = respuesta
  end
end

class Maraton
  def initialize
  
  end

  def deck(tipo)
    #archivo_csv = ""
    case 
    when tipo == 1
      archivo_csv = "maraton_historia.csv"
    when tipo == 2
      archivo_csv = "maraton_geografia.csv"
    when tipo = 3
      archivo_csv = "maraton_entretenimiento.csv"       
    end
    archivo_csv
  end

  def preguntas(archivo_csv)
    array_new= []
    CSV.foreach(archivo_csv) do |row|
      producto = Question.new(row[0],row[1],row[2],row[3],row[4])
      array_new << producto
    end
    array_new
  end

  def analiza_respuesta(arreglo,archivo_csv)
    array_new= []
    si_no = false
    CSV.foreach(archivo_csv) do |row|
      producto = Question.new(row[0],row[1],row[2],row[3],row[4])
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
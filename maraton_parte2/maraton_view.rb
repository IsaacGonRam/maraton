class View

  def bienvenida
    puts
    puts "Bienvenido a Maratón." 
    puts "Te daremos una pregunta y deberás escoger el No. de la respuesta correcta.  "
    puts "Listo?  Arranca el juego!"
  end

  def deck
    puts "Escoge el No. de opcion de los tipos de preguntas que quieres"
    puts "1. Historia"
    puts "2. Geografia"
    puts "3. Entretenimiento"
    tipo_deck = gets.chomp.to_i
    tipo_deck
  end

  def pregunta(array_question,numero)
    array = []
    puts 
    puts "Pregunta"
    pregunta = array_question[numero].pregunta
    puts pregunta
    array << pregunta
    puts "1. #{array_question[numero].opcion1}"
    puts "2. #{array_question[numero].opcion2}"
    puts "3. #{array_question[numero].opcion3}"
    array << gets.chomp
    array
  end

  def respuesta_correcta
    puts "Correcta!"
  end

  def respuesta_incorrecta
    puts "Incorrecta!"
  end

  def total(bien, mal)
    puts
    puts "Acabaste:" 
    puts "Tuviste #{bien} Correctas y #{mal} Incorrectas."
  end












end
class View

  def bienvenida
    puts
    puts "Bienvenido a Maratón." 
    puts "Te daremos una pregunta y deberás adivinar la respuesta correcta.  "
    puts "Listo?  Arranca el juego!"
  end

  def pregunta(array_question,numero)
    array = []
    puts 
    puts "Pregunta"
    pregunta = array_question[numero].pregunta
    puts pregunta
    array << pregunta
    print "Intento:"
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
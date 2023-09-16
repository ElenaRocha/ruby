# #ejercicio chatbot
# puts "Hola, minombre es Ruby"
# puts "¿Cuál es tu nombre?"
# name = gets.chomp
# puts "Hola #{name}, encantado de conocerte. ¿Quieres saber cuántos años tengo o dónde he nacido? Si no, adios!"

# while (question = gets.chomp) != 'Adios!'
#   if question == '¿Cuántos años tienes?'
#     puts "Tengo 20 años"
#   elsif question == '¿Dónde naciste?'
#     puts "En Japón"
#   end
# end



# #práctica con métodos
# def sensacion_del_dia(descripcion)
#   "El día está #{descripcion}"
# end

# def temperatura(temp)
#   case
#   when temp < 0
#       "it's freezing!"
#     when temp >= 0 && temp < 15
#       "a bit chilly"
#     when temp >= 15 && temp < 25
#       "pleasant weather"
#     when temp > 25 && temp < 40
#       "so hot!"
#   else
#     "we're all gonna die!"
#   end
# end

# puts sensacion_del_dia('nublado')
# puts temperatura(20)



# #calculadora
# def sumar(a, b)
#   display(a + b)
# end

# def restar(a, b)
#   display(a - b)
# end
# def multiplicar(a, b)
#   display(a * b)
# end

# def dividir(a, b)
#   display(a / b)
# end

# def elevar_potencia(a, b)
#   display(a ** b)
# end

# def display(result)
#   puts sprintf("%.2f", result)
# end

# puts "Bienvenido a la calculadora. ¿Qué operación quieres realizar?"
# operacion = gets.chomp

# puts "¿Cuál es el primer número?"
# numero1 = gets.chomp.to_f

# puts "¿Cuál es el segundo número?"
# numero2 = gets.chomp.to_f

# sumar(numero1, numero2) if operacion == 'sumar'
# restar(numero1, numero2) if operacion == 'restar'
# multiplicar(numero1, numero2) if operacion == 'multiplicar'
# dividir(numero1, numero2) if operacion == 'dividir'
# elevar_potencia(numero1, numero2) if operacion == 'elevar a la potencia'



# #práctica con string
# input = <<-STR
# Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
# STR

# $words = input.split(/\s+|\.|\,/).select { |w| !w.empty? } # This uses a Regular Expression

# def display(array)
#   array.each do |elem|
#     puts elem
#   end
# end

# display($words)

# sorted = $words.sort

# puts "\n\nSorted\n"
# display(sorted)

# puts "\n\nSorted Reverse\n"
# display(sorted.reverse)

# sorted.delete_at(0)
# sorted << 'myword'

# display(sorted.sort)

# def frequency(word)
#   arr = $words.select do |sample|
#     word == sample
#   end
#   arr.size
# end

# frequencies = $words.uniq.map do |word|
#   [ word, frequency(word) ]
# end

# sorted = frequencies.sort do |a, b|
#   b[-1] <=> a[-1]
# end

# sorted.each_with_index do |pair, index|
#   puts "#{index + 1}: #{pair[0]} #{pair[-1]} occurrences"
# end



# práctica
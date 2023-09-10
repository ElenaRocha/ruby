#puts "Hello World"
#print "hello world"
#print "¿Cuál es tu nombre?"
#name = gets
#print "Hola #{name}"

#ejercicio chatbot
#puts "Hola, minombre es Ruby"
#puts "¿Cuál es tu nombre?"
#name = gets.chomp
#puts "Hola #{name}, encantado de conocerte. ¿Quieres saber cuántos años tengo o dónde he nacido?"

#while (question = gets.chomp) != 'Adios!'
#  if question == '¿Cuántos años tienes?'
#    puts "Tengo 20 años"
#  end

#  if question == '¿Dónde naciste?'
#    puts "En Japón"
#  end
#end

#puts "Gracias por hablar conmigo"

#ejercicio chatbot 2
#puts "Hi, my name is Ruby!"
#puts "What is your name?"
#name = gets.chomp
#puts "Hi there #{name}, great to meet you!"

#if question == 'How old are you?'
#  puts "I'm 20 years old"
#end

#if question == 'Where do you live?'
#  puts "Japan"
#end

#puts "Thanks for chatting!"

#práctica con métodos
#def suma(a, b)
#  a + b
#end

#def multiplicacion(a, b, c)
#  a * b * c
#end

#def sensacion_del_dia(descripcion)
#  "El día está #{descripcion}"
#end

#def temperatura(grados)
#  if grados > 25
#    "Hace calor"
#  else
#    "No hace calor"
#  end
#end

# A more advanced version using case
#def temp_description_2(temp)
#  case
#  when temp < 0
#      "it's freezing!"
#    when temp >= 0 && temp < 15
#      "a bit chilly"
#    when temp >= 15 && temp < 25
#      "pleasant weather"
#    when temp > 25 && temp < 40
#      "so hot!"
#  else
#    "we're all gonna die!"
#  end
#end

#puts suma(10, 20)
#puts multiplicacion(1, 2, 3)
#puts sensacion_del_dia('nublado')
#puts temperatura(20)
#puts temp_description_2(20)

#calculadora
def sumar(a, b)
  display(a + b)
end

def restar(a, b)
  display(a - b)
end

def multiplicar(a, b)
  display(a * b)
end

def dividir(a, b)
  display(a / b)
end

def elevar_potencia(a, b)
  display(a ** b)
end

def display(result)
  puts sprintf("%.2f", result)
end

puts "Bienvenido a la calculadora. ¿Qué operación quieres realizar?"
operacion = gets.chomp

puts "¿Cuál es el primer número?"
numero1 = gets.chomp.to_f

puts "¿Cuál es el segundo número?"
numero2 = gets.chomp.to_f

sumar(numero1, numero2) if operacion == 'sumar'
restar(numero1, numero2) if operacion == 'restar'
multiplicar(numero1, numero2) if operacion == 'multiplicar'
dividir(numero1, numero2) if operacion == 'dividir'
elevar_potencia(numero1, numero2) if operacion == 'elevar a la potencia'

#manipulado cadenas: darle la vuelta, pasar a mayúsculas, contar los caracteres, generar una nueva cadena sólo con 10 caracteres, extraer los dos últimos caracteres en una nueva cadena, extraer el quinto caracter
str = "Esto es una frase de prueba"

# Reverse
#puts str.reverse

# Capitalize
#puts str.upcase

# Length
#puts str.length

# First 10 characters
#puts str[0...10]

# Last two chars
#puts str[-2..-1]

# 5th char
#puts str[4]

#arrays
#arr = [ 'a', 'b', 'c', 'c', 'd', 'e', 'f' ]

# 3rd char (counting from 1)
#puts arr[2]

# First two elements
#puts arr[0..1]

# Last Element
#puts arr[-1]

# Delete the duplicate 'c'
#puts arr.delete_at(3)

# Add a 'g' to the end of the array
#arr << 'g'
#puts arr

input = <<-STR
Stacy Brown-Philpot is the chief operating officer of TaskRabbit, where she’s responsible for scaling and expanding the marketplace. Before TaskRabbit, she spent nearly a decade leading global operations for Google’s flagship products. She served as Head of Online Sales and Operations for Google India and opened the office in Hyderabad. Stacy was also an entrepreneur in residence at Google Ventures.
STR

$words = input.split(/\s+|\.|\,/).select { |w| !w.empty? } # This uses a Regular Expression

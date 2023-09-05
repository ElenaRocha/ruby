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
def suma(a, b)
  a + b
end

def multiplicacion(a, b, c)
  a * b * c
end

def sensacion_del_dia(descripcion)
  "El día está #{descripcion}"
end

def temperatura(grados)
  if grados > 25
    "Hace calor"
  else
    "No hace calor"
  end
end

# A more advanced version using case
def temp_description_2(temp)
  case
  when temp < 0
      "it's freezing!"
    when temp >= 0 && temp < 15
      "a bit chilly"
    when temp >= 15 && temp < 25
      "pleasant weather"
    when temp > 25 && temp < 40
      "so hot!"
  else
    "we're all gonna die!"
  end
end

puts suma(10, 20)
puts multiplicacion(1, 2, 3)
puts sensacion_del_dia('nublado')
puts temperatura(20)
puts temp_description_2(20)

#calculadora
def add(a, b)
  display(a + b)
end

def divide(a, b)
  display(a / b)
end

def subtract(a, b)
  display(a - b)
end

def multiply(a, b)
  display(a * b)
end

def power(a, b)
  display(a ** b)
end

def display(result)
  puts sprintf("%.2f", result)
end

puts "Welcome to calculator"
puts "What is the first operand?"
op_a = gets.chomp.to_f

puts "What is the second operand?"
op_b = gets.chomp.to_f

puts "What operator would you like to use?"
operator = gets.chomp

add(op_a, op_b) if operator == 'add'
subtract(op_a, op_b) if operator == 'subtract'
multiply(op_a, op_b) if operator == 'multiply'
power(op_a, op_b) if operator == 'power'
divide(op_a, op_b) if operator == 'divide'

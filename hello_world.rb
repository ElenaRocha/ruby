#puts "Hello World"
#print "hello world"
print "¿What's your name?"
name = gets
#print name
print "Hi #{name}"


#ejercicio chatbot
puts "Hi, my name is Ruby!"
puts "What is your name?"
name = gets.chomp
puts "Hi there #{name}, great to meet you!"

while (question = gets.chomp) != 'Bye'
  if question == 'How old are you?'
    puts "I'm 20 years old"
  end

  if question == 'Where do you live?'
    puts "Japan"
  end
end

puts "Thanks for chatting!"

#ejercicio chatbot 2
puts "Hi, my name is Ruby!"
puts "What is your name?"
name = gets.chomp
puts "Hi there #{name}, great to meet you!"

if question == 'How old are you?'
  puts "I'm 20 years old"
end

if question == 'Where do you live?'
  puts "Japan"
end

puts "Thanks for chatting!"

#práctica con métodos
def add(a, b)
  a + b
end

def multiply2(a, b, c)
  a * b * c
end

def the_feels(word)
  "The feeling of the day is #{word}"
end

def temp_description_1(temp)
  if temp > 85
    "It's hot"
  else
    "It's not hot"
  end
end

# A more advanced version using case
def temp_description_2(temp)
  case
    when temp < 0
      "it's freezing!"
    when temp >= 0 && temp < 15
      "wow, bit chilly"
    when temp >= 15 && temp < 30
      "pleasant weather"
    when temp > 30 && temp < 45
      "damn! So hot!"
  else
    "we're all gonna die!"
  end
end

puts add(10, 20)
puts multiply(1, 2, 3)
puts the_feels('programmy')
puts temp_description_1(20)
puts temp_description_2(20)

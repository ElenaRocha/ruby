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

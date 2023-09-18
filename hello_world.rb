# #ejercicio chatbot
# puts "Hola, mi nombre es Ruby"
# puts "¿Cuál es tu nombre?"
# name = gets.chomp
# puts "Hola #{name}, encantado de conocerte. ¿Quieres saber cuántos años tengo o dónde he nacido? Si no, adiós!"

# while (question = gets.chomp) != 'Adiós!'
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
#       "Hace mucho frío!"
#     when temp >= 0 && temp < 15
#       "Hace frío"
#     when temp >= 15 && temp < 25
#       "Hace buen tiempo"
#     when temp > 25 && temp < 40
#       "Hace mucho calor!"
#   else
#     "Vamos a morir!"
#   end
# end

# puts sensacion_del_dia('soleado')
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
#   array.each do |element|
#     puts element
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



# # práctica rangos
# def incluido?(rango, numero)
#   numero >= rango.begin && numero <= rango.end
# end

# puts incluido?(10.0..20.0, 12.0)

# # def multiplos()
# #   (7..140).each do |n|
# #       if n%7 == 0
# #         print "#{n}, "
# #     end
# #   end
# # end

# def multiplos ()
#   1.upto(20) do |n|
#     puts n * 7
# end 

# multiplos()

# def comparador(range1, range2)
#   if range1.begin < range2.begin
#     if range1.end < range2.begin
#       return nil
#     else
#       return (range2.begin..range1.end)
#     end
#   else
#     if range2.end < range1.begin
#       return nil
#     else
#       return (range1.begin..range2.end)
#     end
#   end
# end

# print comparador(1..7, 3..9)



# #práctica con hasmap
# cuentas_bancarias = {
#   'Danile'   => 1000,
#   'Jessica'  => 1200,
#   'Bryan' => 1500,
#   'Katherine'  => 2200
# }

# suma = 0
# cuentas_bancarias.each_pair do |nombre, ahorros|
#   suma += ahorros
#   puts "#{nombre} tiene $#{ahorros}"
# end

# puts "En total disponemos de #{suma}€"

# def ordenar(hash)
#   orden = {}
#   hash.keys.sort.reverse.each do |key|
#     orden[key] = hash[key]
#   end
#   return orden
# end

# puts ordenar(cuentas_bancarias)



#práctica símbolos
# users = [
#   { name: 'Dan', email: 'dan@coderdan.co' },
#   { name: 'Lauren', email: 'lauren@laurenneko.com' },
#   { name: 'Steve', email: 'steve@apple.com' }
# ]

# user = users.find do |user|
#   user[:name] == 'Dan'
# end

# if user
#   puts user[:email]
# else
#   puts "No user found"
# end



#práctica de clases
# class User
#   attr_accessor :name, :email, :age

#   def initialize(name, email, age)
#     self.name = name
#     self.email = email
#     self.age = age
#   end

#   def celebrate_birthday
#     puts "Happy Birthday!"
#     self.age += 1
#   end

#   def to_s
#     self.name
#   end

#   def inspect
#     "[#{self.name}, #{self.email}, #{self.age}]"
#   end
# end

# user = User.new('Elvis', 'elvis@presley.com', 55)
# puts user
# p user



# #práctica tiempo
# # 24h
# def print_time24
#   puts Time.now.strftime("%H:%M")
# end

# # 12h
# def print_time12
#   puts Time.now.strftime("%H:%I%P")
# end

# class Reloj
#   def hora_formato
#     Time.now.strftime("%H:%M:%S on %B %d, %Y")
#   end

#   def arrancar
#     loop do
#       print "\r#{hora_formato}"
#       sleep 1
#     end
#   end
# end

# reloj = Reloj.new
# reloj.arrancar



# mini proyecto: vamos a organizar un proyecto. Primero estableceremos sus miembros (string) y un presupuesto. Luego dividiremos los miembros en clases (Porject Manager, desarrollador y diseñador). Cada una de estas clases tendrá como atributos el nombre y un salario, y te devolverá la descripción de su rol. Después incluiremos un método que nos indique el salario por día dividiendo entre 210. Ahora instanciaremos un PM, 3 desarrolladores y un diseñador, y calcularemos el presupuesto total para el salario de todo el equipo. Por último implementaremos un método que muestre a todos los miembros del equipo ordenados por salario de manera ascendente.
#El último ejercicio es simplificar el código mediante el concepto de herencia

# class Member
#   attr_accessor :name, :salary

#   def initialize(name, salary)
#     @name = name
#     @salary = salary
#   end

#   def day_rate
#     salary.to_f / 210
#   end

#   def to_s
#     "#{role} #{self.name} #{day_rate}"
#     role
#   end
# end

# class ProjectManager < Member
#   def role
#     "Project Manager"
#   end
# end

# class Developer < Member
#   def role
#     "Developer"
#   end
# end

# class Designer < Member
#   def role
#     "Designer"
#   end
# end

# class Project
#   attr_accessor :name, :budget
#   attr_reader :members

#   def initialize(name, budget)
#     @name = name
#     @budget = budget
#     @members = []
#   end

#   def total_dayrate
#     sum = 0
#     @members.each do |member|
#       sum += member.day_rate
#     end
#     sum
#   end

#   def sorted_members
#     @members.sort do |a,b|
#       a.day_rate <=> b.day_rate
#     end
#   end
# end

# project = Project.new("Cafe Website", 5000)
# project.members << ProjectManager.new('Dan', 100000)
# project.members << Developer.new('Robin', 80000)
# project.members << Developer.new('Jill', 80000)
# project.members << Designer.new('James', 75000)

# puts project.members
# puts project.total_dayrate
# #puts "Sorted by Day Rate"
# #puts project.sorted_members

#1. Dado un número cualquiera, realizar la suma factorial de todos los números hacia abajo hasta el 1

def suma_factorial(numero)
suma = 0
valores = []
factorial = 0

(1..numero).each do | n |
#puts "El resultado de sumar #{n} + #{suma} = "
suma += n
#puts suma
#puts "y la lista de valores #{valores} aumenta al añadir #{suma}"
valores << suma
end 

valores.each do |valor|
#puts "Estoy sumando #{factorial} + #{valor}"
factorial += valor
end

puts "El factorial de #{numero} es #{factorial}"

return suma
end

print ("¿De qué número quieres calcular el factorial? ")

numero = gets.chomp.to_i

suma_factorial(numero)

#Mi primero solución, que da el resultado pero no sigue el camino indicado
def suma_factorial (numero)

factorial = 1

(1..numero).each do |n|
factorial = factorial * n
end

puts ("El factorial de #{numero} es #{factorial}")

end

print ("¿De qué número quieres calcular el factorial? ")

numero = gets.chomp.to_i

suma_factorial(numero)


# #2. Dado un array y el número de divisiones deseado, sin utilizar ninguna función avanzada de arrays, partir el array en ese número de divisiones ordenadamente. Si no es divisible la suma de elementos y el número de subdivisiones, dejar a nil los últimos registros

# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n"]
# num_subdivisiones = 3

# def divisor(array, num_subdivisiones)
# matriz = Array.new(num_subdivisiones){[]}
# #matriz = Array.new(num_subdivisiones, [])
# # #con esta solución los arrays dentro del array son el mismo objeto con el mismo id, así que no fucniona

# num_elementos = array.size
# num_elementos_subdiv = (num_elementos.to_f/num_subdivisiones.to_f).ceil

# diferencia = num_elementos%num_subdivisiones
# cantidad_nils = num_subdivisiones - diferencia

# if diferencia != 0
# cantidad_nils.times do
# array << nil
# end
# end

# # if diferencia == 1
# # array << nil << nil
# # elsif diferencia == 2
# # array << nil
# # end
# array.each_with_index do |element, index|
# modulo = index%num_subdivisiones
# matriz[modulo] << element
# end
# # matriz.each do |a|
# # if a.size != num_elementos_subdiv
# # a << nil
# # end
# # end

# matriz.each do |a|
# puts a.inspect
# end
# end

# divisor(array, num_subdivisiones)

# numero = 942.to_s.split("")
# puts numero
# puts numero.class
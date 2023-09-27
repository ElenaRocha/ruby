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

# class Miembro
#     attr_accessor :nombre, :salario
  
#     def initialize(nombre, salario)
#       @nombre = nombre
#       @salario = salario
#     end
  
#     def tarifa_diaria
#       salario.to_f / 210
#     end
  
#     def to_s
#       "#{role} #{self.nombre} #{tarifa_diaria}"
#       role
#     end
#   end
  
#   class JefeDeProyecto < Miembro
#     def role
#       "Jefe de Proyecto"
#     end
#   end
  
#   class Desarrollador < Miembro
#     def role
#       "Desarrollador"
#     end
#   end
  
#   class Disenador < Miembro
#     def role
#       "Diseñador"
#     end
#   end
  
#   class Proyecto
#     attr_accessor :nombre, :presupuesto
#     attr_reader :Miembros
  
#     def initialize(nombre, presupuesto)
#       @nombre = nombre
#       @presupuesto = presupuesto
#       @Miembros = []
#     end
  
#     def tarifa_diaria_total
#       sum = 0
#       @Miembros.each do |Miembro|
#         sum += Miembro.tarifa_diaria
#       end
#       sum
#     end
  
#     def sorted_Miembros
#       @Miembros.sort do |a,b|
#         a.tarifa_diaria <=> b.tarifa_diaria
#       end
#     end
#   end
  
#   Proyecto = Proyecto.new("Cafe Website", 5000)
#   Proyecto.Miembros << JefeDeProyecto.new('Andrés', 100000)
#   Proyecto.Miembros << Desarrollador.new('Laura', 80000)
#   Proyecto.Miembros << Desarrollador.new('Juan', 80000)
#   Proyecto.Miembros << Disenador.new('Jaime', 75000)
  
#   puts Proyecto.Miembros
#   puts Proyecto.tarifa_diaria_total
#   puts Proyecto.sorted_Miembros
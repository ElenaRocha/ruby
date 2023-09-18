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
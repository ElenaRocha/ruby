#tenemos una fucnión que genera contraseñas de forma aleatoria
# def self.generar_password
#     longitud_pass = 14
#     a=('0'..'9').to_a
#     b=('a'..'z').to_a
#     c=('A'..'Z').to_a

#     d=['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?'] # ['~', '!', '@', '%', '*', '_', '+', '=', '{', '[', '}', ']', ':', ',', '.', '?', '/']
#     z=[a,b,c,d].flatten

#     return longitud_pass.times.map{ z.sample }.join
# end

#Necesitamos asgurarnos de que en todos los casos va a incluir mínimo un caracter, un número, una minúscula y una mayúscula

def generar_password

    require 'benchmark'

    longitud_pass = 14
    a=('0'..'9').to_a
    b=('a'..'z').to_a
    c=('A'..'Z').to_a

    d=['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?'] # ['~', '!', '@', '%', '*', '_', '+', '=', '{', '[', '}', ']', ':', ',', '.', '?', '/']
    z=[a,b,c,d].flatten

    password = longitud_pass.times.map{ z.sample }.join

#     # Solución 1: comprobar si la contraseña cumple las condiciones, y si no generar una nueva. Corremos el peligro de que entre en un bucle infinito
#     # if password.match(/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?'])/) 
#     #     password
#     # else
#     #     puts "otra vez"
#     #     generar_password
#     # end

    #Solución 2: incluir un nuevo elemento al final de la contraseña, comprobando primero si es necesario que ese elemento se de un tipo concreto
    password = z.sample(longitud_pass-1)

    if password.join.match(/(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?'])/) 
        password.insert(rand(0..longitud_pass-2), z.sample)
        puts password.join
    else
        puts "la contraseña mala es: #{password}"
        case password
        when /(?=.*[0-9])/ == false
            puts "y le falta un número"
            password = password.insert(rand(0..longitud_pass-2), a.sample)
        when /(?=.*[a-z])/ == false
            puts "y le falta una minúscula"
            password = password.insert(rand(0..longitud_pass-2), b.sample)
        when /(?=.*[A-Z])/ == false
            puts "y le falta una mayúscula"
            password = password.insert(rand(0..longitud_pass-2), c.sample)
        else
            puts "y le falta un caracter especial"
            password = password.insert(rand(0..longitud_pass-2), d.sample)
        end
        puts "la contraseña tiene #{password.size} caracteres"
        puts password.join
    end

end

puts generar_password

puts Benchmark.measure { generar_password }

# #Solución propuesta por Pinilla. Elige un número predeterminado de forma aleatoria para cada tipo de elemento, los une, y los entremezcla

# SIMBOLOS   = ['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?']
# NUMEROS    = ('0'..'9').to_a
# MINUSCULAS = ('a'..'z').to_a
# MAYUSCULAS = ('A'..'Z').to_a

# def generar_password
#     alineaciones = [
#         [1, 4, 4, 4], # long 13
#         [1, 3, 5, 4], # long 13
#         [1, 3, 3, 5], # long 13
#         [1, 5, 3, 3], # long 13
#         [1, 3, 4, 5], # long 14
#         [1, 3, 5, 4], # long 14
#         [1, 4, 3, 5], # long 14
#         [1, 4, 5, 3], # long 14
#         [1, 4, 3, 5], # long 14
#         [1, 4, 5, 3], # long 14
#     ]
    
#     alineacion = alineaciones.sample

#     pass = SIMBOLOS.sample(alineacion[0]) +
#         NUMEROS.sample(alineacion[1]) +
#         MINUSCULAS.sample(alineacion[2]) +
#         MAYUSCULAS.sample(alineacion[3])

#     return pass.shuffle.join()

# end

# puts generar_password


# #Solución propuesta por Perez. Ahorra algo de tiempo y hace la longitud aleatoria

# SIMBOLOS   = ['!', '@', '%', '*', '_', '+', '=', ':', ',', '.', '?']
# NUMEROS    = ('0'..'9').to_a
# MINUSCULAS = ('a'..'z').to_a
# MAYUSCULAS = ('A'..'Z').to_a
# REPETIBLES = NUMEROS + MINUSCULAS + MAYUSCULAS

# def generar_password

#   pass = SIMBOLOS.sample(1) +
#     NUMEROS.sample(1) +
#     MINUSCULAS.sample(1) +
#     MAYUSCULAS.sample(1) +
#     REPETIBLES.sample(rand(8..10))

#   return pass.shuffle.join()
# end

# puts generar_password
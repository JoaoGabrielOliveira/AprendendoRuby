def MostrarPares()
    numeroI = 0
    numeroF = gets.to_i
    while numeroI <= numeroF
        puts "Número é par: #{numeroI}"
        numeroI += 2
    end
end

def MostrarPares2()
    numeroI = 0
    numeroF = gets.to_i
    for numeroI in (numeroI .. numeroF)
        puts "Número é par: #{numeroI}" if numeroI%2 == 0
    end
end

def ParouImpar()
    puts "Deseja mostrar numeros impares ou pares?"
    puts "Digite 0 para Pares e 1 para Impares"
    op = gets.to_i
    numeroI = 0
    numeroF = gets.to_i

    for numeroI in (numeroI .. numeroF)
        if op == 0
            puts "Número é par: #{numeroI}" if numeroI%2 == 0
        elsif op == 1
            puts "Número é impar: #{numeroI}" if numeroI%2 == 1
        else
            puts "A opção digitada não existe"
            break
        end
    end
end

def JogoAdivinhar()
    #Declarar Variaveis
    numero = 0
    tentativas = 0
    segredo = rand(1..10)
    resultado = "Desculpe, você não conseguiu \nMas sorte na proxima vez"

    while numero != segredo and tentativas < 3
        #puts `clear
        puts '---'
        puts segredo
        puts '---'
        puts "Digite um número:"
        numero = gets.to_i
        if numero == segredo
            resultado = "Você acertou."
            break
        elsif numero < segredo
            puts "Quase!\nO número digitado é menor que o número secreto"
            tentativas += 1
        elsif numero > segredo
            puts "Quase!\nO número digitado é maior que o número secreto"
            tentativas += 1   
        end
    end
    puts `clear`
    puts resultado
    puts "Quantidade de tentativas: #{tentativas}°"
    puts "Número secreto era #{segredo}"
end

JogoAdivinhar()
def HelloWorld()
    puts "Hello World"
end

def Nome()
    nome = "João G"
    idade = 17

    #puts ("Bem Vindo " + nome + ", de " + idade.to_s + " anos.")
    #puts "Bem Vindo " + nome + ", de " + idade.to_s + " anos."
    puts "Bem Vindo  #{nome} , de #{idade.to_s} anos."
end

def PegarNome()
    puts "Digite seu nome:"
    nome = gets

    puts "Olá #{nome}"
end

PegarNome()
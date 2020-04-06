def RetornarNome()
    nome = gets
    nome
    #Não há necessiade de uma palavra chave pra dizer o que valor será retornado
end

def SeMaior()
    puts "Digite seu Nome:" 
    nome = gets
    puts "Digite sua Idade:"
    idade = gets
    idade = idade.to_i
    #Convertendo Idade para tipo Númerico    

    if idade > 18
        "Olá " + nome + ", você pode entrar"
    else
        "Olá " + nome + ", você não pode entrar"
    end
end

def OutraForma()
    puts "Digite seu Nome:" 
    nome = gets
    puts "Digite sua Idade:"
    idade = gets
    idade = idade.to_i

    puts "Olá " + nome + ", você pode entrar" if idade > 17
    puts "Olá " + nome + ", você não pode entrar" unless idade > 17
    #unless é o mesmo que if not ou !
end

def Exercicio()
    #Declarar Variaveis
    idade = nil


    resultado = ""


    puts "Digite sua idade:"
    idade = gets
    idade = idade.to_i

    idadePai = 46
    idadeMae = 39
    if idade > idadePai
        resultado = "Mais velho que meu pai"
    elsif idade < idadePai
        resultado = "Mais novo que meu pai"
    else
        resultado = "Tem a mesma idade que meu pai"
        
    end

    if idade > idadeMae
        resultado += " e mais velho que minha mãe"
    elsif idade < idadeMae
        resultado += " e mais novo que minha mãe"
    else
        resultado += " e tem a mesma idade que minha mãe"
    end

    puts resultado
end
    
Exercicio()
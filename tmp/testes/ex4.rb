def ex4()
    nomes = []
    numero_cadastros = 0

    puts "-- Bem-Vindos --"
    puts "\n\n\n"

    puts "Digite o numero de cadastros:"
    numero_cadastros = gets.to_i
    

    
    for x in (0..numero_cadastros-1)
        puts "\n\n"
        puts "---------------------------------------"
        puts "Digite o nome do resgistro número #{x}°"
        nomes[x] = gets
        puts "---------------------------------------"
    end

    puts "\n\n"

    for x in (0..3)
        puts nomes[x]
        puts "-------"
    end
    
end
    ex4()
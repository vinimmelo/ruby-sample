def da_boas_vindas
  puts "Bem vindo do Foge-foge"
  puts "Qual o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n"
  puts "Começaremos o jogo para voce #{nome}"
end


def desenha(mapa)
  puts mapa
end


def pede_movimento
  puts "Para onde deseja ir?"
  movimento = gets.upcase.strip
end


def game_over
  puts "\n\n\n\n\n\n"
  puts "Game Over"
end
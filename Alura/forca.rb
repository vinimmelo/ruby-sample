# @vinimmelo - Vinícius Melo

def boas_vindas
  puts 'Bem vindo ao jogo da forca'
  puts 'Qual é o seu nome?'
  nome = gets.strip
  puts "\n\n\n\n\n"
  puts "Começaremos o jogo pra você, #{nome}."
  nome
end

def escolhe_palavra_secreta
  puts 'Escolhendo uma palavra secreta...'
  palavra_secreta = 'programador'
  puts "Palavra secreta com #{palavra_secreta.size} letras"
end


def joga(nome)

end

loop do
  joga nome
  if nao_quer_jogar?
    break
  end
end

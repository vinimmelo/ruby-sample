# coding: utf-8
puts 'Bem vindo ao jogo da adivinhação'
puts 'Qual é o seu nome? '
nome = gets.chomp

puts "\n\n\n\n\nComeçaremos o jogo para você, " + nome + "."

puts "Escolhendo um número secreto entre 0 e 200...\n\n\n\n\n\n\n"
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"

for tentativa in 1..3
  puts "Tentativa " + tentativa.to_s
  puts "Entre com o número: "
  chute = gets
  puts "Será que acertou? Você chutou " + chute.to_s
  if chute.to_i == numero_secreto
    puts "Acertou, parabéns!!!"
    exit
  else
    if chute.to_i > numero_secreto
      puts "O número é menor."
    else
      puts "O número é maior."
    end
  end
end

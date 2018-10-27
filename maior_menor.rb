# coding: utf-8
puts 'Bem vindo ao jogo da adivinhação'
puts 'Qual é o seu nome? '
nome = gets.chomp

puts "\n\n\n\n\nComeçaremos o jogo para você, " + nome + "."

puts "Escolhendo um número secreto entre 0 e 200...\n\n\n\n\n\n\n"
numero_secreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "Tentativa 1"
puts "Entre com o número: "
chute = gets
puts "Será que acertou? Você chutou " + chute
puts chute.to_i == numero_secreto

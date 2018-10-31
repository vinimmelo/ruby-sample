#!/usr/bin/env ruby
#@vinimmelo

def da_boas_vindas
  puts 'Bem vindo ao jogo da adivinhação'
  puts 'Qual é o seu nome? '
  nome = gets.chomp
  puts "Começaremos o jogo para você, " + nome + "."
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200...\n\n\n\n\n\n\n"
  numero_secreto = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  numero_secreto
end

def pede_um_numero(tentativa, limite)
  puts "\n\n\n\nTentativa " + tentativa.to_s + " de " + limite.to_s
  puts "Entre com o número: "
  chute = gets
  puts "Será que acertou? Você chutou " + chute
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = chute == numero_secreto
  if acertou
    puts "Acertou, parabéns!!!"
    return true
  end
  if chute > numero_secreto
    puts "O número é menor."
  else
    puts "O número é maior."
  end
  false
end

da_boas_vindas
numero_secreto = sorteia_numero_secretonp

limite_de_tentativas = 5
for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa, limite_de_tentativas
  if verifica_se_acertou numero_secreto, chute
    break
  end
end

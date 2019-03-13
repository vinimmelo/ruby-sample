bemvindo = -> (nome) {
  puts "Bem vindo #{nome}"
}

teste = bemvindo
bemvindo.call 'Vinicius'
bemvindo.call 'Thais'
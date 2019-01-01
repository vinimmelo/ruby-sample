def salva_rank nome, pontos
  conteudo = "#{nome}\n#{pontos}"
  File.write "rank.txt", conteudo
end


def le_rank
  conteudo_atual = File.read('rank.txt').strip
  dados = conteudo_atual.split "\n"
  dados
end

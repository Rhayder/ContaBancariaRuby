# principal.rb
require "./classes/conta_bancaria.rb"
require "./classes/conta_com_taxa.rb"

conta_zio = ContaComTaxa.new("zio", 100)


conta_pessoa2 = ContaBancaria.new("pessoa2", 200)


conta_zio.transferir(conta_pessoa2, 50)

puts "Conta do Zio: #{conta_zio.saldo}" 

puts "\nConta da Pessoa 2: #{conta_pessoa2.saldo}"

    
begin
 conta_zio.transferir(conta_pessoa2, 60)
rescue StandardError => meu_erro
    p "Não foi possivel transferir: #{meu_erro.message}"
end

puts "Conta do Zio: #{conta_zio.saldo}"    
    
puts "\nConta da Pessoa 2: #{conta_pessoa2.saldo}"


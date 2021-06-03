#conta com taxa
class ContaComTaxa < ContaBancaria 
   TAXA = 2 #constante

    def transferir(outra_conta, valor)
         super
         
         debitar(TAXA) 
         
        
        #super(outra_conta, valor)
        # se estiver usando os mesmos parametros pode usar somente o super
    end   
end

class Cliente < ActiveRecord::Base
 
	validates_presence_of :nome, :email, :data_nascimento, :sexo, :cidade, :endereco, :bairro, :numero, :cep, :estado

end

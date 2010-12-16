class Fornecedore < ActiveRecord::Base
  
	validates_presence_of :nome, :razao_social, :cnpj, :nome_fantasia, :responsavel, :email, :inscricao_estadual, 
:telefone, :contato_financeiro, :endereco

end

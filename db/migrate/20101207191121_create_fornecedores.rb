class CreateFornecedores < ActiveRecord::Migration
  def self.up
    create_table :fornecedores do |t|
      t.string :razao_social
      t.integer :cnpj
      t.string :nome_fantasia
      t.string :responsavel
      t.string :email
      t.string :incricao_estadual
      t.string :telefone
      t.string :contato_financeiro
      t.text :endereco
      t.string :contato1
      t.string :contato2
      t.string :contato3

      t.timestamps
    end
  end

  def self.down
    drop_table :fornecedores
  end
end

class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nome
      t.string :email
      t.date :data_nascimento
      t.string :sexo
      t.string :cidade
      t.string :endereco
      t.string :bairro
      t.string :numero
      t.integer :cep
      t.string :estado

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end

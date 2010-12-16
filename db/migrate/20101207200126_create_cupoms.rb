class CreateCupoms < ActiveRecord::Migration
  def self.up
    create_table :cupoms do |t|
      t.integer :id_fonecedor
      t.integer :id_cliente
      t.date :validade
      t.integer :valor_de_compra
      t.integer :valor_de_credito
      t.string :forma_de_pagamento

      t.timestamps
    end
  end

  def self.down
    drop_table :cupoms
  end
end

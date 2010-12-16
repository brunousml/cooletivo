# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101207200126) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.string   "cidade"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "numero"
    t.integer  "cep"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cupoms", :force => true do |t|
    t.integer  "id_fonecedor"
    t.integer  "id_cliente"
    t.date     "validade"
    t.integer  "valor_de_compra"
    t.integer  "valor_de_credito"
    t.string   "forma_de_pagamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedores", :force => true do |t|
    t.string   "razao_social"
    t.integer  "cnpj"
    t.string   "nome_fantasia"
    t.string   "responsavel"
    t.string   "email"
    t.string   "incricao_estadual"
    t.string   "telefone"
    t.string   "contato_financeiro"
    t.text     "endereco"
    t.string   "contato1"
    t.string   "contato2"
    t.string   "contato3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

class Cupom < ActiveRecord::Base
  
  validates_presence_of :id_fonecedor, :id_cliente, :validade, :valor_de_compra, :valor_de_credito, :forma_de_pagamento
  
end

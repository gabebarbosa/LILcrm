class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cnpj
      t.string :contato
      t.string :telefone
      t.string :email
      t.string :cidade

      t.timestamps null: false
    end
  end
end

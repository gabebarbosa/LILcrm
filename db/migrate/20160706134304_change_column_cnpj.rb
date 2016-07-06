class ChangeColumnCnpj < ActiveRecord::Migration
  def change
    change_column(:clientes, :cnpj, :string)
end
end

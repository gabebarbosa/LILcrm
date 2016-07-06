class AddClienteIdToAtendimento < ActiveRecord::Migration
  def change
    add_column :atendimentos, :cliente_id, :integer
  end
end

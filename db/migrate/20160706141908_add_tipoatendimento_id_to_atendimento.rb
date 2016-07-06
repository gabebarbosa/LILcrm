class AddTipoatendimentoIdToAtendimento < ActiveRecord::Migration
  def change
    add_column :atendimentos, :tipoatendimento_id, :integer
  end
end

class AddAtendimentoIdToResposta < ActiveRecord::Migration
  def change
    add_column :resposta, :atendimento_id, :integer
  end
end

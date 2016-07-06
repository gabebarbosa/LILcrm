class AddUserIdToAtendimento < ActiveRecord::Migration
  def change
    add_column :atendimentos, :user_id, :integer
  end
end

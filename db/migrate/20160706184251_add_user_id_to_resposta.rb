class AddUserIdToResposta < ActiveRecord::Migration
  def change
    add_column :resposta, :user_id, :integer
  end
end

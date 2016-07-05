class CreateResposta < ActiveRecord::Migration
  def change
    create_table :resposta do |t|
      t.text :descricao

      t.timestamps null: false
    end
  end
end

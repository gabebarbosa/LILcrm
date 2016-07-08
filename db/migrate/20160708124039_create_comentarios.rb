class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :user
      t.text :descricao
      t.integer :atendimento_id

      t.timestamps 
      add_foreign_key :comments, :ideas
    end
  end
end

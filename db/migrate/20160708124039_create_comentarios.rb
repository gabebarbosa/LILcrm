class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :user
      t.text :descricao
      t.integer :atendimento_id

      t.timestamps 
    end
  end
end

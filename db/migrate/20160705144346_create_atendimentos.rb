class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.string :assunto
      t.text :descricao
      t.string :status

      t.timestamps null: false
    end
  end
end

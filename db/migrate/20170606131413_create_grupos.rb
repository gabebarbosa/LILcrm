class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nome
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end

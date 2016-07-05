class CreateTipoatendimentos < ActiveRecord::Migration
  def change
    create_table :tipoatendimentos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end

class CreateInscritos < ActiveRecord::Migration[5.1]
  def change
    create_table :inscritos do |t|
      t.string :nome
      t.string :personagem
      t.string :categoria
      t.timestamps
    end
  end
end

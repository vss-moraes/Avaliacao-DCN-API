class CreateInscritos < ActiveRecord::Migration[5.1]
  def change
    create_table :inscritos do |t|
      t.string :nome
      t.string :personagem
      t.references :inscricao, polymorphic: true, index: true
      t.timestamps
    end
  end
end

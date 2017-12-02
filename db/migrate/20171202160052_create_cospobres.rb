class CreateCospobres < ActiveRecord::Migration[5.1]
  def change
    create_table :cospobres do |t|
      t.float :baixo_custo
      t.float :fantasia
      t.float :personagem
      t.float :interpretacao
      t.float :criatividade
      t.timestamps
    end
  end
end

class CreateCosplays < ActiveRecord::Migration[5.1]
  def change
    create_table :cosplays do |t|
      t.float :qualidade
      t.float :similaridade
      t.float :interpretacao
      t.float :criatividade
      t.timestamps
    end
  end
end

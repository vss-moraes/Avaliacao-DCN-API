class CreateNota < ActiveRecord::Migration[5.1]
  def change
    create_table :nota do |t|
      t.float :fantasia
      t.float :similaridade
      t.float :interpretacao
      t.float :criatividade
      t.float :baixo_custo
      t.belongs_to :inscrito, index: true
      t.belongs_to :avaliador, index: true

      t.timestamps
    end
  end
end

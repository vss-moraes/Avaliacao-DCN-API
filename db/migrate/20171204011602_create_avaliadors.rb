class CreateAvaliadors < ActiveRecord::Migration[5.1]
  def change
    create_table :avaliadors do |t|
      t.boolean :presidente
      t.boolean :interno
      t.timestamps
    end
  end
end

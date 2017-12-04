class CreateInscritors < ActiveRecord::Migration[5.1]
  def change
    create_table :inscritors do |t|
      t.timestamps
    end
  end
end

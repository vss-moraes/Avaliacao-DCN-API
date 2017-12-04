class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome_completo
      t.string :cpf
      t.string :password_digest

      t.timestamps
    end
  end
end

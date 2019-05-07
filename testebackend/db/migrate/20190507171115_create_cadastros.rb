class CreateCadastros < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastros do |t|
      t.string :email
      t.string :nome

      t.timestamps
    end
  end
end

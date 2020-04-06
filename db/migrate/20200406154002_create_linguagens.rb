class CreateLinguagens < ActiveRecord::Migration[6.0]
  def change
    create_table :linguagens do |t|
      t.string :nome
      t.string :extensao
      t.string :descricao
      t.string :icone

      t.timestamps
    end
  end
end

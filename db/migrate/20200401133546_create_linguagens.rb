class CreateLinguagens < ActiveRecord::Migration[6.0]
  def change
    create_table :linguagens do |t|
      t.string :nome , null:false, default:''
      t.string :extensao , null:false, default:''
      t.string :descricao , null:false, default:''
      t.string :icone , null:false, default:''

      t.timestamps
    end
  end
end

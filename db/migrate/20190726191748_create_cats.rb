class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :owner, default: 'cafe'
      t.boolean :adopted, default: false
      t.string :personality
      t.integer :affectionate, default: 0
      t.integer :age
      t.string :breed
      t.string :favorite_treat

      t.timestamps
    end
  end
end

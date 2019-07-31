class CreateCatDates < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_dates do |t|
      t.integer :user_id
      t.integer :cat_id
      t.integer :affectionate, default: 0
      t.timestamps
    end
  end
end

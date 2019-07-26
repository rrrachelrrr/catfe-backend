class CreateCatDates < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_dates do |t|
      t.integer :user_id
      t.integer :cat_id
      t.integer :price, default: 10
      t.string :treat

      t.timestamps
    end
  end
end

class CreateSmartdevices < ActiveRecord::Migration
  def change
    create_table :smartdevices do |t|
      t.string :device_kind
      t.string :device_model
      t.date :buy_date
      t.integer :ammount

      t.timestamps null: false
    end
  end
end

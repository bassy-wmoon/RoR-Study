class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      
      t.string :account
      t.text :password
      t.timestamp :reg_date
      t.timestamp :upd_date

      t.timestamps null: false
    end
  end
end

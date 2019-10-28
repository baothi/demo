class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references  :user

      t.string      :name
      t.integer     :balance, default: 0
      
      t.timestamps
    end
  end
end

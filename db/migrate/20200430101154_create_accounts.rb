class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :currency
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.string :account_number

      t.timestamps
    end
  end
end

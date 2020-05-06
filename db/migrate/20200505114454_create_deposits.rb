class CreateDeposits < ActiveRecord::Migration[6.0]
  def change
    create_table :deposits do |t|
      t.references :user, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end

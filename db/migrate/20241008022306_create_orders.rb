class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 10, scale: 2
      t.integer :status, default: 0
      t.string :token, null: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :orders, :token, unique: true
  end
end

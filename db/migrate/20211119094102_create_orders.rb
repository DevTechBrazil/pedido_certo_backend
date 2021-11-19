class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :registration
      t.date :delivery
      t.float :amount
      t.date :last_payment

      t.timestamps
    end
  end
end

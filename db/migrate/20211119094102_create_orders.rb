class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :registration_date
      t.date :delivery_date
      t.float :amount
      t.date :last_payment_date

      t.timestamps
    end
  end
end

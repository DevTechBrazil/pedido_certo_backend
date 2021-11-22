class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :description
      t.integer :product_type
      t.float :cost
      t.float :sale_value

      t.timestamps
    end
  end
end

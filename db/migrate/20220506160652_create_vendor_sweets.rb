class CreateVendorSweets < ActiveRecord::Migration[6.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :price
      t.references :sweet
      t.references :vendor
      t.timestamps
    end
  end
end

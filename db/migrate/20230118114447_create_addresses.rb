class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :company
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip5
      t.string :zip4

      t.timestamps
    end
  end
end

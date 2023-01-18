class AddStandarizedToAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :standarized, :boolean, default: false
  end
end

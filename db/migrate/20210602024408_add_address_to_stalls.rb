class AddAddressToStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :stalls, :address, :string
  end
end

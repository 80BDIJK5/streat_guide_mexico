class AddServicesToStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :stalls, :services, :string
  end
end

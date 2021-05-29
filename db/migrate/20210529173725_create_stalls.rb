class CreateStalls < ActiveRecord::Migration[6.0]
  def change
    create_table :stalls do |t|

      t.timestamps
    end
  end
end

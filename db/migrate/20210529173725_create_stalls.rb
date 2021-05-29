class CreateStalls < ActiveRecord::Migration[6.0]
  def change
    create_table :stalls do |t|
      t.string :name
      t.string :category, default: "mexican"
      t.string :description
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

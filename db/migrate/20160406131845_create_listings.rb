class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :mlscode
      t.text :address
      t.timestamps null: false
    end
  end
end

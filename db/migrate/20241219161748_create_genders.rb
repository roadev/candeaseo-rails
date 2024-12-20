class CreateGenders < ActiveRecord::Migration[8.0]
  def change
    create_table :genders do |t|
      t.string :name
      t.string :short_name
      t.integer :display_order
      t.boolean :active

      t.timestamps
    end
  end
end

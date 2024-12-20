class CreateRegions < ActiveRecord::Migration[8.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.text :translations
      t.string :flag
      t.boolean :active

      t.timestamps
    end
  end
end

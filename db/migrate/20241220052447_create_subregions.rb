class CreateSubregions < ActiveRecord::Migration[8.0]
  def change
    create_table :subregions do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true
      t.text :translations
      t.string :flag
      t.string :wiki_data_id
      t.boolean :active

      t.timestamps
    end
  end
end

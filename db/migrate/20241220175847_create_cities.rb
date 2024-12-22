class CreateCities < ActiveRecord::Migration[8.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true
      t.text :translations
      t.string :wiki_data_id
      t.boolean :active

      t.timestamps
    end
  end
end

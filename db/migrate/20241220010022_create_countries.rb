class CreateCountries < ActiveRecord::Migration[8.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :short_name
      t.string :native_name
      t.string :iso2
      t.string :iso3
      t.string :phone_code
      t.string :currency
      t.string :currency_name
      t.string :currency_symbol
      t.string :timezone
      t.text :translations
      t.string :flag
      t.string :wiki_data_id
      t.references :region, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end

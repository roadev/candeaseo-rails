class CreateTownships < ActiveRecord::Migration[8.0]
  def change
    create_table :townships do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end

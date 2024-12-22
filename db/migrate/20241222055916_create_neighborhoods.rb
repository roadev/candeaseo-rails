class CreateNeighborhoods < ActiveRecord::Migration[8.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.references :township, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end

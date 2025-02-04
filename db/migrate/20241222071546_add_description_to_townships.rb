class AddDescriptionToTownships < ActiveRecord::Migration[8.0]
  def change
    add_column :townships, :description, :text
  end
end

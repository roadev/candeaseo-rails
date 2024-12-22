class AddCreatedByToRegions < ActiveRecord::Migration[8.0]
  def change
    add_column :regions, :created_by, :integer
  end
end

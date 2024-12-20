class CreateIdentityDocumentTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :identity_document_types do |t|
      t.string :name
      t.string :short_name
      t.integer :display_order
      t.boolean :active

      t.timestamps
    end
  end
end

json.extract! document_type, :id, :name, :short_name, :display_order, :active, :created_at, :updated_at
json.url document_type_url(document_type, format: :json)

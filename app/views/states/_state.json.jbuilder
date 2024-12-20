json.extract! state, :id, :name, :country_id, :iso_code, :translations, :wiki_data_id, :active, :created_at, :updated_at
json.url state_url(state, format: :json)

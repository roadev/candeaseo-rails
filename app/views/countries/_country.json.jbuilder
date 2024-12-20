json.extract! country, :id, :name, :short_name, :native_name, :iso2, :iso3, :phone_code, :currency, :currency_name, :currency_symbol, :timezone, :translations, :flag, :wiki_data_id, :region_id, :active, :created_at, :updated_at
json.url country_url(country, format: :json)

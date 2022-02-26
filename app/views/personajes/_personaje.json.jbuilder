json.extract! personaje, :id, :nombre, :edad, :peso, :hisoria, :created_at, :updated_at
json.url personaje_url(personaje, format: :json)

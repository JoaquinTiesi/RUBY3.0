json.extract! pelicula, :id, :titulo, :fechacreacion, :calificacion, :genero_id, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)

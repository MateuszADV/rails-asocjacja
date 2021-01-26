json.extract! pacient, :id, :name, :last_name, :age, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)

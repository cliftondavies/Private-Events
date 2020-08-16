json.extract! event, :id, :description, :event_date, :location, :created_at, :updated_at
json.url event_url(event, format: :json)

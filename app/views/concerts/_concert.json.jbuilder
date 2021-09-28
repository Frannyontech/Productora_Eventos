json.extract! concert, :id, :location, :date_event, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)

json.extract! team, :id, :hackathon_id, :file, :name, :description, :created_at, :updated_at
json.url team_url(team, format: :json)

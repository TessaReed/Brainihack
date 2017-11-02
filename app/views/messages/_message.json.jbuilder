json.extract! message, :id, :team_id, :message_text, :user_id, :profile_id, :created_at, :updated_at
json.url message_url(message, format: :json)

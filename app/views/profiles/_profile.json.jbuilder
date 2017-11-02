json.extract! profile, :id, :name, :surname, :avatar_data, :description, :profession, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)

json.extract! team_member, :id, :profile_id, :team_id, :hackathons_id, :created_at, :updated_at
json.url team_member_url(team_member, format: :json)

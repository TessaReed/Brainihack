class TeamMember < ApplicationRecord
  belongs_to :profile
  belongs_to :team
  belongs_to :hackathons
end

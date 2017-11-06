class TeamMember < ApplicationRecord
  belongs_to :profile
  belongs_to :team
end

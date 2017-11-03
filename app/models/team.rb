class Team < ApplicationRecord
  has_many :roles
  belongs_to :hackathons
end

class Profile < ApplicationRecord
  has_many :teams
  has_many :hackathons
  belongs_to :user
  include ImageUploader[:avatar]
end

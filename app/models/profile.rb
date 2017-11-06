class Profile < ApplicationRecord
  has_many :hackathon
  has_many :teams
  include ImageUploader[:avatar]
end

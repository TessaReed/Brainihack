class Hackathon < ApplicationRecord
  has_many :teams
  belongs_to :profile
  include ImageUploader[:avatar]
end

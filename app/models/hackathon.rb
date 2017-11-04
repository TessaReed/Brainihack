class Hackathon < ApplicationRecord
  has_many :teams
  include ImageUploader[:avatar]
end

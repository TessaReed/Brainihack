class Profile < ApplicationRecord
  has_many :teams
  include ImageUploader[:avatar]
end

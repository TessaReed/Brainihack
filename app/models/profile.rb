class Profile < ApplicationRecord
  belongs_to :user
  has_many :teams
  include ImageUploader[:avatar]
end

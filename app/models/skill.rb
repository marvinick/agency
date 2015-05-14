class Skill < ActiveRecord::Base
  belongs_to :candidate
  validates :name, presence: true
end
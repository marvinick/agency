class Skill < ActiveRecord::Base
  belongs_to :candidate, foreign_key: :candidate_id
  validates :name, presence: true
end
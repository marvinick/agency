class Candidate < ActiveRecord::Base
  has_many :skills, foreign_key: :candidate_id
end
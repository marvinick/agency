class Candidate < ActiveRecord::Base
  has_many :candidate_skills
  has_many :skills, through: :candidate_skills
end
class CreateCandidateSkills < ActiveRecord::Migration
  def change
    create_table :candidate_skills do |t|
      t.integer :candidate_id
      t.integer :skill_id
      t.timestamps
    end
  end
end

require 'spec_helper'

describe Skill do
  it { should have_many(:candidates)}
  it { should have_many(:candidate_skills)}
end
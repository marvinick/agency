require 'spec_helper'

describe Candidate do
  it { should have_many(:skills)}
  it { should have_many(:candidate_skills)}
  it { should validate_presence_of(:name)}
end
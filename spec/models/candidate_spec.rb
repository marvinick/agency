require 'spec_helper'

describe Candidate do
  it { should have_many(:skills)}
end
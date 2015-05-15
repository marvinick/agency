require 'spec_helper'

describe Skill do
  it { should have_many(:candidates)}
end
require 'spec_helper'

describe Skill do
  it { should belong_to(:candidate)}
  it { should validate_presence_of(:name)}
end
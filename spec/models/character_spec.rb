require 'spec_helper'

describe Character do
  before { @character = Character.new(name: "Example Character", age: 22) }

  subject { @character }

  it { should respond_to(:name) }
  it { should respond_to(:age) }

  it { should be_valid }

  describe "when name is not present" do
    before { @character.name = " " }
    it { should_not be_valid }
  end

  describe "when age is not present" do
    before { @character.age = nil }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @character.name = "a" * 51 }
    it { should_not be_valid }
  end
end

require 'spec_helper'

describe Chapter do
  before { @chapter = Chapter.new(title: "Example Chapter", number: 1, scene: "Acte 2", anecdote: "La dispute") }

  subject { @chapter }

  it { should respond_to(:title) }
  it { should respond_to(:number) }
  it { should respond_to(:scene) }
  it { should respond_to(:anecdote) }

  it { should be_valid }

  describe "when title is not present" do
    before { @chapter.title = " " }
    it { should_not be_valid }
  end

  describe "when number is not present" do
    before { @chapter.number = nil }
    it { should_not be_valid }
  end

  describe "when scene is not present" do
    before { @chapter.scene = nil }
    it { should_not be_valid }
  end

  describe "when anecdote is not present" do
    before { @chapter.anecdote = nil }
    it { should_not be_valid }
  end
end

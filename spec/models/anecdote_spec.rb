require 'spec_helper'

describe Anecdote do

  let(:user) { FactoryGirl.create(:user) }
  before { @anecdote = user.anecdotes.build(content: "Lorem ipsum") }

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end

  subject { @user }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  it { should respond_to(:admin) }
  it { should respond_to(:anecdotes) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @anecdote.user_id = nil }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @anecdote.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @anecdote.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @anecdote.content = "a" * 141 }
    it { should_not be_valid }
  end
end

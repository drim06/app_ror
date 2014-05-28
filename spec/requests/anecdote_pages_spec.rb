require 'spec_helper'

describe "AnecdotePages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "anecdote creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a anecdote" do
        expect { click_button "Post" }.not_to change(Anecdote, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do

      before { fill_in 'anecdote_content', with: "Lorem ipsum" }
      it "should create a anecdote" do
        expect { click_button "Post" }.to change(Anecdote, :count).by(1)
      end
    end
  end
end

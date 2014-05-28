require 'spec_helper'

describe "Character pages" do

  subject { page }

  describe "profileCharacter page" do
    let(:character) { FactoryGirl.create(:character) }
    before { visit character_path(character) }

    it { should have_content(character.name) }
    it { should have_title(character.name) }
  end

  describe "newCharacter page" do
    before { visit newCharacter_path }

    it { should have_content('New Character') }
    it { should have_title(full_title('New Character')) }
  end

  describe "newCharater" do

    before { visit newCharacter_path }

    let(:submit) { "Create my character" }

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Age",          with: 22
      end

      it "should create a character" do
        expect { click_button submit }.to change(Character, :count).by(1)
      end
    end
  end
end

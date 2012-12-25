# encoding: utf-8
require "spec_helper"

describe "User can handle room" do
  include_context 'signup user'
  subject { page }

  context "user has not created room yet" do
    it "user can create room" do
      visit rooms_path

      click_link 'New Room'
      fill_in 'Name', with: 'Test Room Name'
      click_on 'Create'

      should have_content 'Test Room Name'
    end
  end
end

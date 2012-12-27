# encoding: utf-8
require "spec_helper"

describe "room messages" do
  subject { page }

  let(:room) { create :room }
  it "user add message to room and see it" do
    visit room_messages_path(room)

    fill_in 'Body', with: 'Sample POST'
    click_on 'Post'

    should have_content 'Sample POST'
  end
end

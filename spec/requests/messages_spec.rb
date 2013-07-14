# encoding: utf-8
require "spec_helper"

describe "room messages" do
  self.use_transactional_fixtures = false
  subject { page }

  let!(:room) { create :room }
  it "user add message to room and see it", js: true do
    visit room_messages_path(room)

    fill_in 'message_body', with: 'Sample POST'
    click_on 'Post'

    should have_content 'Sample POST'
    expect(find('#messages').text).to eq 'Sample POST'
  end
end

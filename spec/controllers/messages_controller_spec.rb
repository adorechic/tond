# encoding: utf-8
require "spec_helper"

describe MessagesController do
  subject { response }

  describe '#index' do
    before { get :index, room_id: room.id }

    context "room has no messages" do
      let(:room) { create :room }

      it { assigns[:room].messages.should eq [] }
      it { assigns[:message].should be_a_new Message }
      it { should render_template 'index' }
    end

    context "room has a few messages" do
      let(:room) do
        create(:room).tap do |room|
          3.times { create :message, room: room }
        end
      end

      it { assigns[:room].messages.should have(3).messages }
      it { assigns[:message].should be_a_new Message }
      it { should render_template 'index' }
    end
  end

  describe '#create' do
    before { post :create, room_id: room.id, message: message }
    let(:message) { { body: 'Test Message' } }
    let(:room) { create :room }

    it { should redirect_to room_messages_path(room) }

    it { assigns[:message].should be_a Message }
    it { assigns[:message].should be_persisted }
  end
end

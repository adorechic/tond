# encoding: utf-8
require "spec_helper"

describe RoomsController do
  before { login_user }

  describe '#index' do
    before do
      2.times { create :room }
    end

    subject { response }
    before { get :index }

    it { should render_template 'index' }

    it { assigns[:rooms].should have(2).rooms }
  end

  describe '#new' do
    subject { get :new }

    it { should render_template 'new' }
  end

  describe '#create' do
    subject do
      post :create, room: { name: 'foo' }
    end

    it { expect { subject }.to change(Room, :count).to(1).from(0) }

    it { subject.should redirect_to room_path(Room.last) }
  end

  describe '#show' do
    let!(:room) { create :room }

    before { get :show, id: room.id }

    it { should render_template 'show' }

    it { assigns[:room].should eq room }
  end
end

# encoding: utf-8
require "spec_helper"

describe RoomsController do
  before { login_user }

  describe '#index' do
    subject { get :index }

    it { should render_template 'index' }
  end

  describe '#new' do
    subject { get :new }

    it { should render_template 'new' }
  end
end

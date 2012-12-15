# coding: utf-8
require 'spec_helper'

describe TopController do
  describe '#index' do
    before { login_user }
    subject { get :index }

    it { should be_success }
    it { should render_template 'index' }
  end
end

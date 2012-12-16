# coding: utf-8
require 'spec_helper'

describe TopController do
  describe '#index' do
    subject { get :index }

    context 'if user is login' do
      before { login_user }

      it { should be_success }
      it { should render_template 'index' }
    end

    context 'if user is not login' do
      it { should redirect_to new_user_session_path }
    end
  end
end

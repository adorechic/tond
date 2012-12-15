# coding: utf-8
require 'spec_helper'

describe TopController do
  describe '#index' do
    subject { get :index }

    it { should render_template 'index' }
  end
end

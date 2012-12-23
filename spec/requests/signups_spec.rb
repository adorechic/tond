# coding: utf-8
require 'spec_helper'

describe "User can signup and signin" do
  subject { page }

  context 'if user is first visit' do
    it "User can first time visit and signups" do
      visit root_path
      click_link 'Sign up'

      fill_in 'Email', with: 'test@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Sign up'

      should have_content 'Top#index'
    end
  end

  context 'if user has account' do
    include_context 'signup user'

    it 'User can signin' do
      should have_content 'Top#index'
    end

    it 'User can sign out' do
      visit root_path

      click_link 'ログアウト'

      should have_content 'Sign in'
      visit root_path
      should_not have_content 'Top#index'
    end

  end

  context 'if user forgot password' do
    let!(:user) { create(:user) }
    it 'User can reset password' do
      visit root_path
      click_link 'Forgot your password?'

      fill_in 'Email', with: user.email
      click_on 'Send me reset password instructions'

      mail = ActionMailer::Base.deliveries.last
      confirm_url = mail.body.to_s.scan(/<a href="(.+)">/).first.first

      visit confirm_url

      fill_in 'New password', with: 'newpassword'
      fill_in 'Confirm new password', with: 'newpassword'
      click_on 'Change my password'

      should have_content 'Your password was changed successfully.'
      should have_content 'You are now signed in.'

      click_link 'ログアウト'

      fill_in 'Email', with: user.email
      fill_in 'Password', with: 'newpassword'
      click_on 'Sign in'

      should have_content 'Top#index'
    end
  end
end

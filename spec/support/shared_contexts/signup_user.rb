# encoding: utf-8

shared_context 'signup user' do
  let!(:user) { create(:user) }

  before do
    visit root_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
  end
end
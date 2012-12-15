# coding: utf-8
module ControllerMacros
  def login_user(user = nil)
    user = create(:user) unless user

    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in(user)
  end
end

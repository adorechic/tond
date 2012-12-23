# encoding: utf-8
require "spec_helper"

describe "User can handle room" do
  subject { page }

  context "user has not created room yet" do
    it "user can create room" do
      visit rooms_path
    end
  end
end

require 'spec_helper'

describe Room do
  describe 'model paranoid' do
    let!(:active_one) { create(:room) }
    let!(:deleted_one) { create(:room, deleted_at: Time.now) }
    subject { Room.all }

    it "can found only active records" do
      should have(1).record

      should include active_one
    end
  end
end

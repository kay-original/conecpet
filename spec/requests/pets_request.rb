require 'rails_helper'

RSpec.describe "Pets", type: :request do
  describe "[Action test]" do
    before do
      @user = FactoryBot.create(:user, :a)
    end
  end
end
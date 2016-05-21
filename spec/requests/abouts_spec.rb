require 'rails_helper'

RSpec.describe "Abouts", type: :request do
  describe "GET /abouts" do
    it "works! (now write some real specs)" do
      visit '/about'
      expect(page).to have_content("会社概要")
    end
  end
end

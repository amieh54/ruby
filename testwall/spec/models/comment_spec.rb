require 'rails_helper'
RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:user)).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if first_name field is blank" do
      expect(build(:user, first_name: "")).to be_invalid
    end
end

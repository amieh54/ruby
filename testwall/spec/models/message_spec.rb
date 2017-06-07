require 'rails_helper'
RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:message, user:build(:user))).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if message field is blank" do
      expect(build(:message, content:"")).to be_invalid
    end
  end

  context "With valid attributes" do
    it "should save" do
      expect(build(:message, user:build(:user))).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if user field is nil" do
      expect(build(:message)).to be_invalid
    end
  end

  context "With valid attributes" do
    it "should save" do
      expect(build(:message, user:build(:user))).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if message is less than 10 characters" do
      expect(build(:message, content:"fjk", user:build(:user))).to be_invalid
    end
  end
end

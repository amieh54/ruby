require 'rails_helper'
RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
        user = User.new(username:'amieh54')
      expect(user).to be_valid
    end
  end
  context "With invalid attributes" do
      it "should not save if username field is blank" do
      expect(build(:user, username: "")).to be_invalid
      end
  end
  context "With valid attributes" do
     it "should save" do
            expect(build(:user)).to be_valid
     end
  end
    context "With invalid attributes" do
        it "should not save if username already exists" do
            user1 = User.create(username:'amieh54')
            user2 = User.new(username:'amieh54')
            expect(user2).to be_invalid
        end
    end

    context "With valid attributes" do
        it "should save" do
            expect(build(:user)).to be_valid
        end
    end

    context "With invalid attributes" do
        it "should not save if username is less than 6 characters" do
            expect(build(:user, username:"jd")).to be_invalid
        end
    end
end

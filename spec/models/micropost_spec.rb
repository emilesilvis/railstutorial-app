require 'spec_helper'

describe Micropost do

  let(:user) { FactoryGirl.create(:user) }
  before do
    @micropost = user.microposts.build(content: "Foobar")
  end

  subject { @micropost }

  it "should respond to #content" do
    expect(subject).to respond_to(:content)
  end

  it "should respond to #user_id" do
    expect(subject).to respond_to(:user_id)
  end

  it "should respond to #user" do
    expect(subject).to respond_to(:user)
  end

  it "user should be equal to user" do
    expect(subject.user).to eq user
  end

  it "should be valid" do
    expect(subject).to be_valid
  end

  describe "when the user_id is not present" do
    it "should not be valid" do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end

  describe "when blank content" do
    it "should not be valid" do
      subject.content = " "
      expect(subject).to_not be_valid
    end
  end

  describe "with content that is too long" do
    it "should not be valid" do
      subject.content = "a" * 141
      expect(subject).to_not be_valid
    end
  end

end
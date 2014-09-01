require 'spec_helper'

describe UsersHelper do

  describe "gravatar_for" do
    it "should respond to size" do
      @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
      expect(gravatar_for(@user, {:size => 40})).to respond_to(:size)
    end
  end
end
require "test_helper"

describe User do
  subject { User.new }

  describe 'email' do
    subject { User.new }

    test "when email empty" do
      subject.valid?
      assert subject.errors[:email].any?
    end
    test "when email exists" do
      subject.email = "ouremail-test@example.com"
      subject.valid?
      assert subject.errors[:email].blank?
    end
  end

  describe 'password' do
    subject { User.new.tap { |u| u.password_confirmation = "password" }}
    test "when passwords are the same" do 
      subject.password = "password"
      subject.valid?
      assert subject.errors[:password].blank?
    end
    test "when passwords are different" do
      subject.password = ""
      subject.valid?
      assert subject.errors[:password].any?
    end
  end
end

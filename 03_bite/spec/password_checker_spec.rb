require 'password_checker'

RSpec.describe PasswordChecker do
  context "when password is fewer than 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("hello")}.to raise_error "Invalid password, must be 8+ characters"
    end
  end

  it "when password is 8 characters" do
    password = PasswordChecker.new
    result = password.check("12345678")
    expect(result).to eq true
  end

  it "when password is more than 8 characters" do
    password = PasswordChecker.new
    result = password.check("12345678hhhhhh")
    expect(result).to eq true
  end
end
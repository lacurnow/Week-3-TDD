require 'check_codeword.rb'

RSpec.describe "check_codeword method" do
  it "returns correct if horse is given" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns close if codeword similar" do
    result = check_codeword("hearse")
    expect(result).to eq "Close, but nope."
  end

  it "returns wrong if codeword not horse" do
    result = check_codeword("onion")
    expect(result).to eq "WRONG!"
  end
end
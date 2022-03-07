require 'greet.rb'

RSpec.describe "greet method" do
  it "returns name greeting" do
    result = greet("Luci")
    expect(result).to eq "Hello, Luci!"
  end
end
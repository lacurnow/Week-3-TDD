require 'report_length.rb'

RSpec.describe "report_length method" do
  it "should return the length of the string" do
    result = report_length("Eggs and bacon")
    expect(result). to eq "This string was 14 characters long."
  end
end
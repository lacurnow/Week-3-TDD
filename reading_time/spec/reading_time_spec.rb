require 'reading_time'

RSpec.describe "estimates reading time" do
  it "returns 0.03" do
    reading_time_of_text = reading_time("The cat jumped over the mat")
    expect(reading_time_of_text).to eq "0.03 mins"
  end
  it "returns 0.06" do
    reading_time_of_text = reading_time("The cat jumped over the mat The cat jumped over the mat")
    expect(reading_time_of_text).to eq "0.06 mins"
  end
end
require 'gratitudes'

RSpec.describe Gratitudes do
  it "Returns a list of gratitudes" do
    new_list = Gratitudes.new
    new_list.add("Being able to do this course")
    new_list.add("My friends")
    result = new_list.format
    expect(result).to eq "Be grateful for: Being able to do this course, My friends"
  end
end
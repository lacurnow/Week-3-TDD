require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the length of a string" do
    new_string = StringBuilder.new
    new_string.add("eggs")
    result = new_string.size
    expect(result).to eq 4
  end

  it "returns the string" do
    new_string = StringBuilder.new
    new_string.add("beans")
    new_string.add("bacon")
    result = new_string.output
    expect(result).to eq "beansbacon"
  end
end

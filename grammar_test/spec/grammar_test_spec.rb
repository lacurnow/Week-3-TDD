require 'grammar_test'

RSpec.describe "grammar test method" do
  context "given empty string" do
    it "fails" do
      expect {grammar_check("")}.to raise_error "not a sentence"
    end
  end

  it "checks for a valid sentence" do
    new_string = grammar_check("The cat jumped over the mat.")
    expect(new_string).to eq true
  end

  it "rejects if not first capital" do
    new_string = grammar_check("the cat jumped over the mat.")
    expect(new_string).to eq false
  end

  it "rejects if not ending in fullstop" do
    new_string = grammar_check("The cat jumped over the mat")
    expect(new_string).to eq false
  end
end
require 'task_tracker'

RSpec.describe "task_tracker method" do
  it "should return true if string includes @TODO" do
    result = task_tracker("@TODO walk the dog")
    expect(result).to eq true
  end

  it "should return false if string does not include @TODO" do
    result = task_tracker("walk the dog")
    expect(result).to eq false
  end

  it "should return false if string does not match @TODO" do
    result = task_tracker("@ToDO walk the dog")
    expect(result).to eq false
  end

  it "should return false if string empty" do
    result = task_tracker("")
    expect(result).to eq false
  end

  context "given no input" do
    it "fails" do
      expect {task_tracker(nil)}.to raise_error "No input given."
    end
  end
end
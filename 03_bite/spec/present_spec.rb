require 'present'

RSpec.describe Present do
  context "when present is already wrapped" do
    it "fails" do
      new_present = Present.new
      new_present.wrap("ball")
      expect { new_present.wrap("bat") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when present is already unwrapped" do
    it "fails" do
      new_present = Present.new
      expect { new_present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end
require "spec_helper"

RSpec.describe EnglishNumbers do
  it "has a version number" do
    expect(EnglishNumbers::VERSION).not_to be nil
  end

  it "test 45" do
    expect(EnglishNumbers::EnglishNumber.new(45).in_english).to eq("forty five")
  end

  it "test 73" do
    expect(EnglishNumbers::EnglishNumber.new(73).in_english).to eq("seventy three")
  end

  it "test -73" do
    expect(EnglishNumbers::EnglishNumber.new(-73).in_english).to eq("minus seventy three")
  end

end

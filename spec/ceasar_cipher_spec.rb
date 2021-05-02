require './lib/ceasar_cipher.rb'

describe "#ceasar_cipher" do
  it "shifts letters by the appropriate amount" do

    result = ceasar_cipher("a", 2)

    expect(result).to eql("c")
  end

  it "does not shift letters by the wrong amount" do
    result = ceasar_cipher("a", 3)

    expect(result).to eql("d")
  end
end
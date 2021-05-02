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

  it "maintains case" do
    result = ceasar_cipher("Aa", 0)

    expect(result).to eql("Aa")
  end

  it "wraps the alphabet" do
    result = ceasar_cipher("z", 1)

    expect(result).to eql('a')
  end
end

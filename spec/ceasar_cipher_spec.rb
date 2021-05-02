Describe ceasar_cipher do
  it "shifts letters by the appropriate amount" do
    amount = 2
    initial_letter = "a"
    result = ceasar_cipher("a", 2)

    expect(result).to eql("c")
  end
end
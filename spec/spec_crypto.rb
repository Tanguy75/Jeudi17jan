require_relative '../lib/crypto'

describe "the name_crypto method" do
  it " should return an array when scrapping" do
    expect (name_crypto).to_be_kind_of Array
    expect (value_crypto).not_to_be_nil
  end

  it "should contain some crypto names" do
      expect(name_crypto).to include("BTC")
      expect(name_crypto).to include("ETH")
    end
  end


  describe "The value_crypto method" do
  it "should return an array of it works" do
    expect(value_crypto).to_be_kind_of Array
    expect(value_crypto[10]).not_to_be_nil
  end
end

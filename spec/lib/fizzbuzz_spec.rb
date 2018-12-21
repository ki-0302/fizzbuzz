require "spec_helper"
require "fizzbuzz"

RSpec.describe "FizzBuzz Test" do
  before do
    @fizzbuzz = FizzBuzz.new
  end

  describe "数を文字列にして返す" do
    it "1を文字列'1'にして返す" do
      expect(@fizzbuzz.convert(1)).to eq "1"
    end
  end

  describe "3の倍数の時は'Fizz'を返す" do
    it "3の時は'Fizz'を返す" do
      expect(@fizzbuzz.convert(3)).to eq "Fizz"
    end
  end

  describe "5の倍数の時は'Fizz'を返す" do
    it "5の時は'Buzz'を返す" do
      expect(@fizzbuzz.convert(5)).to eq "Buzz"
    end
  end

  describe "3と5の倍数の時は'FizzBuzz'を返す" do
    it "15の時は'FizzBuzz'を返す" do
      expect(@fizzbuzz.convert(15)).to eq "FizzBuzz"
    end
  end
end

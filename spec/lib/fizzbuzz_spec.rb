require "spec_helper"
require "fizzbuzz"

RSpec.describe "FizzBuzz Test" do
  let(:fizzbuzz) { FizzBuzz.new }

  describe "数を文字列にして返す" do
    it "1を文字列'1'にして返す" do
      expect(fizzbuzz.convert(1)).to eq "1"
    end
  end

  describe "3の倍数の時は'Fizz'を返す" do
    it "3の時は'Fizz'を返す" do
      expect(fizzbuzz.convert(3)).to eq "Fizz"
    end
  end

  describe "5の倍数の時は'Fizz'を返す" do
    subject { fizzbuzz.convert(5) }
    it "5の時は'Buzz'を返す" do
      expect(fizzbuzz.convert(5)).to eq "Buzz"
    end
  end

  describe "3と5の倍数の時は'FizzBuzz'を返す" do
    it "15の時は'FizzBuzz'を返す" do
      expect(fizzbuzz.convert(15)).to eq "FizzBuzz"
    end
  end

  describe "1から100までの数を使用する" do
    it "1から100までを返す" do
      expect(fizzbuzz.range_fizz_buzz).to eq 1..100
    end
  end

  describe "標準出力をする" do
    it "1を標準出力する" do
      expect { fizzbuzz.print_value(1) }.to output("1\n").to_stdout
    end
    it "標準出力を100回する" do
      # テスト用に標準出力で出力回数をカウントする
      def fizzbuzz.print_value(value)
        super
        @stdout_lines ||= 0
        @stdout_lines += 1
      end

      def fizzbuzz.run
        super
        @stdout_lines
      end

      expect(fizzbuzz.run).to eq 100
    end
  end
end

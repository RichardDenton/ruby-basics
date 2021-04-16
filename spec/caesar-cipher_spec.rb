#spec/caesar-cipher_spec.rb
require_relative "../caesar-cipher.rb"

describe "#caesar_cipher" do
  it 'shifts "abcde" to "bcdef" when a shift of 1 is provided' do
    expect(caesar_cipher("abcde", 1)).to eql("bcdef")
  end

  it "shifts 'z' to 'a' when a shift of 1 is provided" do
    expect(caesar_cipher("z", 1)). to eql("a")
  end

  it 'shifts "abcde" to "abcde" when a shift of 26 is provided' do
    expect(caesar_cipher("abcde", 26)).to eql("abcde")
  end

  it "ignores non-alpha characters" do
    expect(caesar_cipher("abc123def", 1)).to eql("bcd123efg")
  end

  it "handles uppercase characters" do
    expect(caesar_cipher("Hello World!", 2)).to eql("Jgnnq Yqtnf!")
  end

  it 'shifts "Jgnnq Yqtnf!" to "Hello World!" when a shift of -2 is provided' do
    expect(caesar_cipher("Jgnnq Yqtnf!", -2)).to eql("Hello World!")
  end
end

# frozen_string_literal: true

# spec/caesar_cipher.rb

require './lib/caesar_cipher'
# returns encrypted data as per the shift factor 
describe 'caesar_cipher' do
  it 'should work with palindromes' do
    expect(caesar_cipher('Kayak', 0)).to eql('Kayak')
  end
  it 'should return "lipps" for "hello"' do
    expect(caesar_cipher('hello', 4)).to eql('lipps')
  end
  it 'should not mess up with capital letters' do
    expect(caesar_cipher('ToMaTo', 10)).to eql('DyWkDy')
  end
  it 'should work with negative shift' do
    expect(caesar_cipher('potato', -5)).to eql('kjovoj')
  end
  it 'should not mess with strings which have numbers and punctuations in between' do
    expect(caesar_cipher('123 lord is 4 eva!', 5)).to eql('123 qtwi nx 4 jaf!')
  end
end

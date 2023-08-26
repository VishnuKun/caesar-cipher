# frozen_string_literal: true

# spec/caesar_cipher.rb

require './lib/caesar_cipher'
# returns encrypted data as per the shift factor 
describe 'caesar_cipher' do
  it 'should return "Kayak" unchanged' do
    expect(caesar_cipher('Kayak', 0)).to eql('Kayak')
  end
  it 'should return "lipps" for "hello"' do
    expect(caesar_cipher('hello', 4)).to eql('lipps')
  end
  it 'should not mess up with capital letters' do
    expect(caesar_cipher('ToMaTo', 10)).to eql('DyWkDy')
  end
  it 'should work with negative shift' do
    expect(caesar_cipher('potato', -16)).to eql('zydkdy')
  end
end

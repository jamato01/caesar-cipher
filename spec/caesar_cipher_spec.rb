require_relative '../caesar_cipher.rb'

describe '#caesar_cipher' do
  it 'shifts string with no punctuation by 1 when no shift factor entered' do
    string = 'Hello'
    result = caesar_cipher(string)
    expect(result).to eq('Ifmmp')
  end

  it 'shifts string with no punctuation by 5' do
    string = 'Hello'
    result = caesar_cipher(string, 5)
    expect(result).to eq('Mjqqt')
  end

  it 'shifts string properly when crossing from z to a' do
    string = 'xyz'
    result = caesar_cipher(string, 4)
    expect(result).to eq('bcd')
  end

  it 'shifts string with punctuation by 5' do
    string = 'Hello, Test!'
    result = caesar_cipher(string, 5)
    expect(result).to eq('Mjqqt, Yjxy!')
  end
end
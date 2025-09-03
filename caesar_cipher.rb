LOWERCASE_LETTERS = ('a'..'z')

def caesar_cipher(string, shift_factor)
  string_array = string.split('')
  string_array.each_with_index do |character, index|
    if LOWERCASE_LETTERS.include?(character.downcase)
      shift_factor.times { character = character.next }
    end
    string_array[index] = character[-1]
  end
  string_array.join
end

puts "What is the string to cipher?"
string_to_cipher = gets.chomp
puts "What is the right shift factor?"
shift_factor = gets.to_i
puts caesar_cipher(string_to_cipher, shift_factor)
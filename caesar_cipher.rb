# frozen_string_literal: true

LOWERCASE_LETTERS = ('a'..'z').freeze

def caesar_cipher(string, shift_factor = 1)
  string_array = string.chars
  string_array.each_with_index do |character, index|
    shift_factor.times { character = character.next } if LOWERCASE_LETTERS.include?(character.downcase)
    string_array[index] = character[-1]
  end
  string_array.join
end

def find_index(original_index, shift_amount)
  alphabet_index_max = 25
  letters_in_alphabet = 26
  new_index = original_index + shift_amount
  new_index > alphabet_index_max ? new_index - letters_in_alphabet : new_index
end

def ceasar_cipher(string, shift_amount)
  # Arrays to check the letters against #
  lowercase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  uppercase = lowercase.map { |letter| letter.upcase}

  # Split original string into an array #
    # Then map it to a new array of shifted letters #
  new_letters = string.split('').map { |letter|
    # Check against the two arrays to maintain case #
    if lowercase.include?(letter)
      new_index = find_index(lowercase.index(letter), shift_amount)
      lowercase[new_index]
    elsif uppercase.include?(letter)
      new_index = find_index(uppercase.index(letter), shift_amount)
      uppercase[new_index]
    else
    # If it's in neither, just return the character #
      letter
    end
  }

  # Rejoin the array with no extra spaces #
  return new_letters.join('')
end

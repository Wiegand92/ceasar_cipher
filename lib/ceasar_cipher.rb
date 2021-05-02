def find_index(original_index, shift_amount)
  array_index_max = 25
  letters_in_alphabet = 26
  new_index = original_index + shift_amount
  new_index > array_index_max ? new_index - letters_in_alphabet : new_index
end

def ceasar_cipher(string, shift_amount)
  lowercase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  uppercase = lowercase.map { |letter| letter.upcase}

  split_string = string.split('')
  new_letters = split_string.map { |letter|
    if lowercase.include?(letter)
      new_index = find_index(lowercase.index(letter), shift_amount)
      lowercase[new_index]
    elsif uppercase.include?(letter)
      new_index = find_index(uppercase.index(letter), shift_amount)
      uppercase[new_index]
    else
      return letter
    end
  }

  return new_letters.join('')
end

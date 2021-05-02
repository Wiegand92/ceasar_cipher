def ceasar_cipher(string, shift_amount)
  lowercase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  uppercase = lowercase.map { |letter| letter.upcase}

  split_string = string.split('')
  new_letters = split_string.map { |letter|
    if letter == " "
      " "
    elsif lowercase.include?(letter)
      lowercase[lowercase.index(letter) + shift_amount]
    else
      raise StandardError.new "I'm not sure what happened"
    end
  }

  return new_letters.join('')
end

def caesar_cipher(string, shift_factor)
  cipher_string = ""
  chars = string.split("")

  for char in chars
    if ("a".."z").include?(char.downcase)
      if char == char.downcase
        cipher_string += ((char.ord + shift_factor - "a".ord) % 26 + "a".ord).chr
      else
        cipher_string += ((char.ord + shift_factor - "A".ord) % 26 + "A".ord).chr
      end
    else
      cipher_string += char
    end
  end
  cipher_string
end

puts caesar_cipher("What a string!", 5)

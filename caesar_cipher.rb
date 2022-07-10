def caesar_cipher(word, key) 
  alphabet = ("a".."z").to_a
  arr = word.split("")
  
  converted_arr = arr.map do |char|
    if alphabet.include?(char.downcase)
      new_char_index = (alphabet.find_index(char.downcase) + key) % 26
      new_char = alphabet[new_char_index]

      if char != char.downcase
        new_char = new_char.upcase
      end
    else
      new_char = char
    end

    new_char
  end

  converted_arr.join("")

end

p caesar_cipher("What a string!", 5)

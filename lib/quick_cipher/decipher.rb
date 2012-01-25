class QuickCipher
  module Decipher
  
    def decipher(input_text, known_cipher = nil)
      character_shift = known_cipher || determine_cipher(input_text)
      input_text.each_char.map do |char|
        ALPHABET.include?(char.downcase) ? ALPHABET[ALPHABET.index(char.downcase) - character_shift] : char
      end.join('')
    end
  
    def decipher_file(input_file, known_cipher = nil)
      decipher(File.open(input_file).read, known_cipher)
    end
  
    private
  
    def determine_cipher(input_text)
      letter_count = Hash.new { |hsh, key| hsh[key] = 0 }
      input_text.each_char { |char| letter_count[char.downcase] += 1 if ALPHABET.include?(char) }
      e_replacement = letter_count.index(letter_count.values.max)
      ALPHABET.index(e_replacement) - 4 # subtract the index of e
    end
  
  end
end
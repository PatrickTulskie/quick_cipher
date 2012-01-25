class QuickCipher
  module Encipher
  
    def encipher(input_text, number)
      input_text.each_char.map do |char|
        ALPHABET.include?(char.downcase) ? ALPHABET[(ALPHABET.index(char.downcase) + number) % ALPHABET.length] : char
      end.join('')
    end
  
    def encipher_file(input_file, number)
      encipher(File.open(input_file).read, number)
    end
  
  end
end
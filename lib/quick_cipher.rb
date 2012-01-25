require 'quick_cipher/decipher'
require 'quick_cipher/encipher'

class QuickCipher
  ALPHABET = ('a'..'z').to_a
  
  class << self
    include Decipher
    include Encipher
  end
end
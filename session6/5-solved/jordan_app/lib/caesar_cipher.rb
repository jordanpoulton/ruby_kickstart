module CaesarCipher

  ENCRYPT_HASH = Hash.new
  DECRYPT_HASH = Hash.new

  uppercase = ("A".."Z").to_a
  lowercase = ("a".."z").to_a
  numbers = ("0".."9").to_a

  [uppercase, lowercase, numbers].each do |array_item|
    array_item.each_with_index do |letter, index|
      ENCRYPT_HASH[letter] = array_item.rotate(3)[index]
    end
  end

  [uppercase, lowercase, numbers].each do |array_item|
    array_item.each_with_index do |letter, index|
      DECRYPT_HASH[letter] = array_item.rotate(-3)[index]
    end
  end

  def self.encrypt string
    output = ""
    string.chars.each do |char|
      output << char unless ENCRYPT_HASH[char]
      output << ENCRYPT_HASH[char] if ENCRYPT_HASH[char]
    end
    output
  end

  def self.decrypt string
    output = ""
    string.chars.each do |char|
      output << char unless DECRYPT_HASH[char]
      output << DECRYPT_HASH[char] if DECRYPT_HASH[char]
    end
    output
  end
end

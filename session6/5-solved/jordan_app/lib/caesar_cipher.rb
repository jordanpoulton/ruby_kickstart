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
    string.chars.map { |char| ENCRYPT_HASH[char] ? ENCRYPT_HASH[char] : char }.join
  end

  def self.decrypt string
    string.chars.map {|char| DECRYPT_HASH[char] ? DECRYPT_HASH[char] : char}.join
  end
end

def caesar_cipher(plainText, shiftCount) 
  lowercaseAlphabet = "abcdefghijklmnopqrstuvwxyz"
  uppercaseAlphabet = lowercaseAlphabet.upcase
  alphabetCount = uppercaseAlphabet.length

  adjustedShiftCount = shiftCount % alphabetCount
  cipherText = ""
  plainCharacters = plainText.split("")

  for character in plainCharacters do
    if lowercaseAlphabet.include?(character)
      newCharacterIndex = (lowercaseAlphabet.index(character) + adjustedShiftCount) % alphabetCount
      cipherText += lowercaseAlphabet[newCharacterIndex]
    elsif uppercaseAlphabet.include?(character)
      newCharacterIndex = (uppercaseAlphabet.index(character) + adjustedShiftCount) % alphabetCount
      cipherText += uppercaseAlphabet[newCharacterIndex]
    else
      cipherText += character
    end
  end

  cipherText
end

# Example usage below
# puts caesar_cipher("What a string!", 0)
# puts caesar_cipher("What a string!", 5)
# puts caesar_cipher("What a string!", 31)
# puts caesar_cipher("What a string!", -21)
# puts caesar_cipher("What a string!", -47)
# puts caesar_cipher("What a string!", 1)
# puts caesar_cipher("What a string!", -25)
# puts caesar_cipher("What a string!", -1)
# puts caesar_cipher("What a string!", 25)

# Example output below
# What a string!
# Bmfy f xywnsl!
# Bmfy f xywnsl!
# Bmfy f xywnsl!
# Bmfy f xywnsl!
# Xibu b tusjoh!
# Xibu b tusjoh!
# Vgzs z rsqhmf!
# Vgzs z rsqhmf!
# Realistically, this would need to be flushed out to appropriately handle hyphens and other special characters, as well as other English contractions besides 's

def substrings(sentence, wList)
  occurrencesPerWord = Hash.new(0)
  words = sentence.split(" ")

  for word in words
    word = word.gsub(/[!?.,;():]/, "").gsub("'s", "").downcase

    if wList.include?(word)
      occurrencesPerWord[word] += 1
    end
  end

  # to find and add wList words that are substrings of other words
  foundWords = occurrencesPerWord.keys

    for element in wList
      for word in foundWords
        if word.include?(element) && word != element
          occurrencesPerWord[element] += 1
        end
      end
    end

   occurrencesPerWord
end

# example usage
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)

# example output
# {"below"=>1, "low"=>1}
# {"howdy"=>1, "partner"=>1, "sit"=>1, "down"=>1, "how"=>2, "it"=>2, "going"=>1, "go"=>1, "i"=>3, "own"=>1, "part"=>1}
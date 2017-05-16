class PigLatinizer


  def piglatinize(word)
    vowels = %w(a e i o u)
    if vowels.include?(word[0].downcase)
      "#{word}way"
    else
      phoneme_end = 0
      until vowels.include?(word[phoneme_end]) || phoneme_end == 3
        phoneme_end += 1
      end
      phoneme_end += 1 if word[phoneme_end - 1] == "q"
      "#{word[phoneme_end..-1]}#{word[0...phoneme_end]}ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(' ').map{|word| piglatinize(word)}.join(' ')
  end

 
end
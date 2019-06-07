#write your code here

def translate(word)
   alpha = ("a".."z").to_a
   vowel = %w[a e i o u]
   consonant = alpha - vowel 

  if vowel.include?(word[0]) 
    if word.include?(" ")
      new_arr = word.split(" ")
      new_arr[0] + "ay" + " " + new_arr[1][1..-1] + new_arr[1][0] + "ay"
    else
    word + "ay"
    end
  elsif consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
    word[3..-1] + word[0..2] + "ay"
  elsif consonant.include?(word[0]) && consonant.include?(word[1]) 
      word[2..-1] + word[0..1] + "ay"
    else
    consonant.include?(word[0])
    word[1..-1] + word[0] + "ay"
  end
end

p translate("quiet")


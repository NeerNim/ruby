#write your code here
def echo(defualt = "hello")
  defualt
end

def shout(word)
  word.upcase
end

def repeat(word, defualt = 2)
  say_word = ""
  defualt.times { say_word += word}  
  say_word
end

def start_of_word(word, num)
  str = word.slice(0, num)
  str  
end

def first_word(words) 
  split_str = words.split(" ")
  split_str[0]
end


def titleize(word)
  small_words = %w[over the and]
  
  word.split(" ").map.with_index do |letter, i|  
    unless (small_words.include? letter) and (i > 0 )
      letter.capitalize
    else
      letter
    end
  end.join(" ")

end


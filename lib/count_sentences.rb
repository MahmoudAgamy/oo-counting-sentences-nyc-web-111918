require 'pry'

# Count_Sentences
class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0 
    i = 0
    self.each_char.with_index do |char, idx|
      if ("?!.".include?(char) && self[idx] != self[idx+1]) || ( (",".include?(char)) && (self[i+1..idx].split(" ").length > 4) )
        count += 1
        i = idx
      end
    end
    count
  end
end
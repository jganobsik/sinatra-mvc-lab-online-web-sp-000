class PigLatinizer
  attr_reader :text
  
  def latinize(text)
    textarray = text.split
   words = []
  textarray.each do |word|
    ending = word[0].concat("ay")
     rest= word.delete_at(0)
     recompiled = rest.concat(ending)
     words << recompiled
   end
   
   @text = words.join(" ")
   
  end
    
  end
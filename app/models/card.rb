class Card < ApplicationRecord
    has_many :lists

    def palindrome(string)
        space = string.gsub(/\s+/, "")
      
      i = 0
        a = []
        while !space[i..-1].empty?
           j = -1
         while !space[i..j].empty?
           s = space[i..j]
           if s.reverse == s
             a << s
           end
          j -= 1
         end
         i += 1
       end
       return a.max_by(&:length)
      
      end

end

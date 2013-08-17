module ApplicationHelper
    
    #returns the full title on a per-page basis.
    def full_title(page_title)
       base_title = "rPro"
       if page_title.empty?
           base_title
       else
           "#{base_title} | #{page_title}"
       end
    end    
    
    def least_common_multiple(number1, number2)
        if number2 > number1
            number1 = number1 ^ number2
            number2 = number1 ^ number2
            number1 = number1 ^ number2
        end
        rest = number1 % number2
        if rest == 0
            return number2
        end
        least_common_multiple(number2, rest)
    end
end

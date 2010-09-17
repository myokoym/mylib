class NumUtils
  def self.num_to_word(num)
    case num
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    when 20
      "twenty"
    when 30
      "thirty"
    when 40
      "forty"
    when 50
      "fifty"
    when 60
      "sixty"
    when 70
      "seventy"
    when 80
      "eighty"
    when 90
      "ninety"
    else
      case num
      when 1 .. 99
        x_one = num % 10
        x_ten = num - x_one
        self.num_to_word(x_ten) + "-" + self.num_to_word(x_one)
      when 100 .. 999
        x_hundred = num / 100
        x_ten = num % 100
        if x_ten == 0
          self.num_to_word(x_hundred) + " hundred"
        else
          self.num_to_word(x_hundred) + " hundred and " + self.num_to_word(x_ten)
        end
      when 1000 .. 999999
        x_thousand = num / 1000
        x_hundred = num % 1000
        if x_hundred == 0
          self.num_to_word(x_thousand) + " thousand"
        else
          self.num_to_word(x_thousand) + " thousand and " + self.num_to_word(x_hundred)
        end
      end
    end 
  end
end


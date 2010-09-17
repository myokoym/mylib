class Numeric
  def to_w
    return "Comming Soon.." unless self.is_a?(Integer)
    num = self
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
    when 21 .. 99
      x_one = num % 10
      x_ten = num - x_one
      x_ten.to_w + "-" + x_one.to_w
    when 100 .. 999
      x_hundred = num / 100
      x_ten = num % 100
      if x_ten == 0
        x_hundred.to_w + " hundred"
      else
        x_hundred.to_w + " hundred and " + x_ten.to_w
      end
    when 1000 .. 9999999
      x_thousand = num / 1000
      x_hundred = num % 1000
      if x_hundred == 0
        x_thousand.to_w + " thousand"
      else
        x_thousand.to_w + " thousand and " + x_hundred.to_w
      end
    when 10000000 .. 99999999
      x_milion = num / 10000000
      x_thousand = num % 10000000
      if x_thousand == 0
        x_milion.to_w + " milion"
      else
        x_milion.to_w + " milion and " + x_thousand.to_w
      end
    else
      "charactor"
    end
  end
end


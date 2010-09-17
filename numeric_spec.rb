require "numeric"

describe Numeric,"#to_w example. " do
  it "1 to one" do
    1.to_w.should == "one"
  end

  it "12 to twelve" do
    12.to_w.should == "twelve"
  end

  it "13 to thirteen" do
    13.to_w.should == "thirteen"
  end

  it "20 to twenty" do
    20.to_w.should == "twenty"
  end

  it "24 to twenty-four" do
    24.to_w.should == "twenty-four"
  end

  it "100 to one hundred" do
    100.to_w.should == "one hundred"
  end

  it "101 to one hundred and one" do
    101.to_w.should == "one hundred and one"
  end
  
  it "115 to one hundred and fifteen" do
    115.to_w.should == "one hundred and fifteen"
  end

  it "342 to three hundred and forty-two" do
    342.to_w.should == "three hundred and forty-two"
  end

  it "500 to five hundred" do
    500.to_w.should == "five hundred"
  end

  it "1000 to one thousand" do
    1000.to_w.should == "one thousand"
  end

  it "1009 to one thousand and nine" do
    1009.to_w.should == "one thousand and nine"
  end

  it "1234 to one thousand and two hundred and thirty-four" do
    1234.to_w.should == "one thousand and two hundred and thirty-four"
  end

  it "99000 to ninety-nine thousand" do
    99000.to_w.should == "ninety-nine thousand"
  end

  it "1000000 to one million" do
    1000000.to_w.should == "one million"
  end

  it "6000000000 to six billion" do
    6000000000.to_w.should == "six billion"
  end

  it "723456789012345 to seven hundred and twenty-three trillion and four hundred and fifty-six billion and seven hundred and eighty-nine million and twelve thousand and three hundred and forty-five" do
    723456789012345.to_w.should == "seven hundred and twenty-three trillion and four hundred and fifty-six billion and seven hundred and eighty-nine million and twelve thousand and three hundred and forty-five"
  end

  it "1.3 to Comming Soon." do
    1.3.to_w.should == "Comming Soon."
  end
  
  it "Sum of 1-1000 chars." do
    sum = 0
    1.upto(1000) do |i|
      sum += i.to_w.gsub(/\W/, "").size
    end
    p sum
  end
end


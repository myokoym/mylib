require "numeric"

describe Numeric, "#to_en" do
  it "1 to one" do
    1.to_en.should == "one"
  end

  it "12 to twelve" do
    12.to_en.should == "twelve"
  end

  it "13 to thirteen" do
    13.to_en.should == "thirteen"
  end

  it "20 to twenty" do
    20.to_en.should == "twenty"
  end

  it "24 to twenty-four" do
    24.to_en.should == "twenty-four"
  end

  it "100 to one hundred" do
    100.to_en.should == "one hundred"
  end

  it "101 to one hundred and one" do
    101.to_en.should == "one hundred and one"
  end
  
  it "115 to one hundred and fifteen" do
    115.to_en.should == "one hundred and fifteen"
  end

  it "342 to three hundred and forty-two" do
    342.to_en.should == "three hundred and forty-two"
  end

  it "500 to five hundred" do
    500.to_en.should == "five hundred"
  end

  it "1000 to one thousand" do
    1000.to_en.should == "one thousand"
  end

  it "1009 to one thousand and nine" do
    1009.to_en.should == "one thousand and nine"
  end

  it "1234 to one thousand and two hundred and thirty-four" do
    1234.to_en.should == "one thousand and two hundred and thirty-four"
  end

  it "99000 to ninety-nine thousand" do
    99000.to_en.should == "ninety-nine thousand"
  end

  it "1000000 to one million" do
    1000000.to_en.should == "one million"
  end

  it "6000000000 to six billion" do
    6000000000.to_en.should == "six billion"
  end

  it "71000000000000 to seventy-one trillion" do
    71000000000000.to_en.should == "seventy-one trillion"
  end
  
  it "823456789012345 to eight hundred and twenty-three trillion and four hundred and fifty-six billion and seven hundred and eighty-nine million and twelve thousand and three hundred and forty-five" do
    823456789012345.to_en.should == "eight hundred and twenty-three trillion and four hundred and fifty-six billion and seven hundred and eighty-nine million and twelve thousand and three hundred and forty-five"
  end

  it "1.3 to \"1.3\"" do
    1.3.to_en.should == "1.3"
  end
end


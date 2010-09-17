require "numutils"

describe NumUtils do
  it "1 to one" do
    NumUtils.num_to_word(1).should == "one"
  end

  it "12 to twelve" do
    NumUtils.num_to_word(12).should == "twelve"
  end

  it "13 to thirteen" do
    NumUtils.num_to_word(13).should == "thirteen"
  end

  it "20 to twenty" do
    NumUtils.num_to_word(20).should == "twenty"
  end

  it "24 to twenty-four" do
    NumUtils.num_to_word(24).should == "twenty-four"
  end

  it "100 to one hundred" do
    NumUtils.num_to_word(100).should == "one hundred"
  end

  it "101 to one hundred and one" do
    NumUtils.num_to_word(101).should == "one hundred and one"
  end
  
  it "115 to one hundred and fifteen" do
    NumUtils.num_to_word(115).should == "one hundred and fifteen"
  end

  it "342 to three hundred and forty-two" do
    NumUtils.num_to_word(342).should == "three hundred and forty-two"
  end

  it "500 to five hundred" do
    NumUtils.num_to_word(500).should == "five hundred"
  end

  it "1000 to one thousand" do
    NumUtils.num_to_word(1000).should == "one thousand"
  end

  it "1009 to one thousand and nine" do
    NumUtils.num_to_word(1009).should == "one thousand and nine"
  end

  it "1234 to one thousand and two hundred and thirty-four" do
    NumUtils.num_to_word(1234).should == "one thousand and two hundred and thirty-four"
  end

  it "99000 to ninety-nine thousand" do
    NumUtils.num_to_word(99000).should == "ninety-nine thousand"
  end

  it "Sum of 1-1000 chars." do
    sum = 0
    1.upto(1000) do |i|
      sum += NumUtils.num_to_word(i).gsub(/\W/, "").size
    end
    p sum
  end
end


require_relative '../lib/Play_parser'
require_relative '../lib/Acts'

describe Play_parser do

  it "can get a list of acts" do
    play = Play_parser.new(three_acts_xml)
    play.acts.names.should == ['Act 1', 'Act 2', 'Act 3']
  end

  it "can get individual acts" do
    play = Play_parser.new(three_acts_xml)
    play.acts[0].should == 'Act 1'
    play.acts[1].should == 'Act 2'
    play.acts[2].should == 'Act 3'
  end


  # Simple genertors of test XML

  def three_acts_xml
    "<PLAY><TITLE>Title1</TITLE><ACT><TITLE>Act 1</TITLE></ACT><ACT><TITLE>Act 2</TITLE></ACT><ACT><TITLE>Act 3</TITLE></ACT></PLAY>"
  end
end

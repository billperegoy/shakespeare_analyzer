require_relative '../lib/shakespeare_analyzer'

describe Play_parser do

  it "can detect a single title" do
    play = Play_parser.new(good_xml)
    play.title.should == 'My Simple Play'
  end

  it "raises error if no title" do
    play = Play_parser.new(no_title_xml)
    expect { play.title }.to raise_error
  end

  it "raises error if multiple titles" do
    play = Play_parser.new(multiple_title_xml)
    expect { play.title }.to raise_error
  end

  # Simple genertors of test XML
  def good_xml
    "<PLAY><TITLE>My Simple Play</TITLE></PLAY>"
  end

  def no_title_xml
    "<PLAY></PLAY>"
  end

  def multiple_title_xml
    "<PLAY><TITLE>Title1</TITLE><TITLE>Title2</TITLE></PLAY>"
  end
end

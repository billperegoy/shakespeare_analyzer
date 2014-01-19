require 'nokogiri'

class Play_parser
  def initialize(xml_string)
    @doc = Nokogiri::XML(xml_string)
  end

  def title
    titles = @doc.xpath('//PLAY/TITLE')
    raise 'There should be one title' unless titles.length == 1
    titles[0].text
  end

  def acts
    acts = @doc.xpath('//PLAY/ACT')
    Acts.new(acts)
  end
end

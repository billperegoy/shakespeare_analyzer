class Acts
  def initialize(acts)
    @acts = acts
  end

  def count
    @acts.length
  end
  
  def names
    @acts.map {|x| x.text}
  end

  def [](count)
    @acts[count].text
  end

  def scenes
    scenes = @acts.xpath('//SCENE')
    Scene.new(scenes)
  end
end

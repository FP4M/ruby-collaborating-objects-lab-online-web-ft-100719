class Artist 
  attr_accessor :name :song 
  @@all = []
  def initailize(name)
    @name = name 
    @song = []
  end
  
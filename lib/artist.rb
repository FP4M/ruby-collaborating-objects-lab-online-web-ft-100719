class Artist 
  attr_accessor :name :song 
  @@all = []
  def initailize(name)
    @name = name 
    @song = []
  end
  def self.all
    @@all
  end

  def add_song(song)
class MP3Importer

  attr_reader :path

    def initialize(path)
      @path = path
    end

    #files gets called by #import and returns an array
    #files turns the files paths into a string
    #then removes the directory part of the string
    def files
      @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end

    # #import takes each normalized filename and sends it to the Song class #new_by_filename
      #which creates a new song instance for each of the filenames
    # #import calls #files
    #so it is calling the method on the MP3Importer instance
    # #import is collaborating with Song instances by calling a Song method (new_by_filename) which creates a new song for every item in the array
    def import
      self.files.each{|file| Song.new_by_filename(file)}
    end
end


class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
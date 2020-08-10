class Song 
  attr_accessor :name, :artist
  attr_reader :artist_name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    file = filename.split("-")
    artist = file[0].strip 
    song = file[1].strip 
    song_new = Song.new(song)
    song_new.artist_name = artist 
    
    song_new 
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
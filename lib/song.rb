class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(file_name)
    song = file_name.split(" - ")
    new_song = self.new(song[1])
    artist = Artist.find_or_create_by_name(song[0])
    new_song.artist = artist
    new_song
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end 
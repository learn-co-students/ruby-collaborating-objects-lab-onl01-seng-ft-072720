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

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


  def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
end

def self.new_by_filename(filename)
  new_file = filename.split(" - ")
  song = Song.new(new_file[1])
  song.artist_name=(new_file[0])
  song
end
end
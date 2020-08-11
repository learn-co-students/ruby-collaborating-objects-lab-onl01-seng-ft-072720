require "pry"
class Song
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    self.name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  # def self.new_by_filename(filename)
  #   song = self.new
  #   song.name = filename.split(" - ")[1]
  #   song.artist = filename.split(" - ")[0]
  #   song
  # end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist 
    song
    # binding.pry
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
  
end

# def self.new_by_filename(filename) 
#   artist_name = filename.split(" - ")[0] 
#   song_name = filename.split(" - ")[1] 
#   song = Song.new(song_name) 
#   artist = Artist.find_or_create_by_name(artist_name) 
#   artist.songs << song 
#   song 
#   end






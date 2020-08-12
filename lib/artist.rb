require 'pry'
class Artist 
attr_accessor :name, :songs

  @@all = []

  def initialize(name)
  @name = name 
  @songs = []
  save 
  end 
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  #This class method should take the name that is passed in (remember, it will be a string), and do one of two things. Find the artist instance that has that name or create one if it doesn't exist. Either way, the return value of the method will be an instance of an artist with the name attribute filled out.
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
class Artist
  attr_accessor :name, :songs

 @@all = []
 
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
    def self.all 
    @@all
  end
  
  def add_song(song)
    song.artist = self
    self.songs << song
  end
 
   def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def save
    @@all << self
  end
 
 def self.new_by_filename(file)
   name = file.split("/").last
   artist = name.split(" - ")[0].strip
   Artist.find_or_create_by_name(artist)
 end
 
 def self.find_or_create_by_name(name)
   artist = @@all.find{|artist| artist.name == name}
   !!artist ? artist : Artist.new(name)
 end
  
  def print_songs
    self.songs.each{|song| puts song.name}
  end
 
end
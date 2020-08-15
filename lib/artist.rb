class Artist

attr_accessor :name, :song

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def self.all
  @@all
end

def add_song(song)
  self.songs << song
end
  
def songs
  @songs
end

def self.find(name)
  self.all.find {|artist|
    artist.name == name}
end

def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    self.new(name)
  end
end

def print_songs
  puts @songs.collect {|song|
    song.name}
end











end
require "pry"

# class Artist
#
#   attr_accessor :name, :songs
#
#   @@all = []
#   def initialize(name)
#     @name = name
#     save
#   end
#
#   def save
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(name)
#     # binding.pry
#     name.artist = self
#     # binding.pry
#   end
#
#   def songs
#     Song.all.select{ |song| song.artist == self}
#   end
#
#   def self.find_or_create_by_name(y)
#     self.find(y) ? self.find(y) : self.new(y)
#   end
#
#   def self.find(y)
#     self.all.find{|word| word.name == name}
#   end
#
#
# end

class Artist
@@all = []
attr_accessor :name, :songs

def initialize(name)
  @name = name
  save
end

def self.all
  @@all
end

def add_song(song)
  song.artist = self
end

def songs
  Song.all.select {|song| song.artist == self}
end

def self.find_or_create_by_name(name)
  self.find(name) ? self.find(name) : self.new(name)
end

def self.find(name)
  self.all.find {|artist| artist.name == name }
end

def save
  @@all << self
end

def print_songs
  songs.each {|song| puts song.name}
end
def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end

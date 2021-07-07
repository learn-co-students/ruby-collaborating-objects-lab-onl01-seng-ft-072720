require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # @songs = []
    save
  end

  def self.all
    @@all
  end

  def add_song(song_obj)
    song_obj.artist = self
  end

  def save
    @@all << self
  end

  def songs
    # binding.pry
    Song.all.select{|song_obj| song_obj.artist == self}
    # @songs
  end

  def self.find_or_create_by_name(name)
    @@all.detect{|i| i.name == name} ? @@all.detect{|i| i.name == name} : self.new(name)
  end

  def print_songs
    songs.each {|song_obj| puts song_obj.name}
  end


end

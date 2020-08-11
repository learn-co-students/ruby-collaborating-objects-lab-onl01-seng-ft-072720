require 'pry'
class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all  
    @@all 
  end 
  
  def add_song(song)
    @songs << song
  end 
  
  def self.find_or_create_by_name(name)
        if @@all.detect{|i| i.name == name}
          @@all.detect{|i| i.name == name}
    else
      self.new(name)
      # self.name
    end
  end
  
   def print_songs
     puts @songs.collect {|song| song.name}
  
   end 
  
end 

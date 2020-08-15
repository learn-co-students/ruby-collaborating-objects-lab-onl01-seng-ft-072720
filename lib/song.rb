class Song
  
attr_accessor :name, :artist, :title

@@all = []

def initialize(name)
  @title = title
  @artist = artist
  @name = name
  @@all << self
end  

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  self.artist.add_song(self)
end

def self.all
  @@all
end

# def self.new_by_filename(filename)
#   song_name = filename.split(" - ")[1]
#   song_artist = filename.split(" - ")[0]
#   song = self.new(song_name)
#   song.artist = song_artist
# end

def self.new_by_filename(filename)
    song_info = filename.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
end

end
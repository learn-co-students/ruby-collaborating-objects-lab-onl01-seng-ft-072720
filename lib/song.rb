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

    def self.new_by_filename(filename)
        name = filename.split(" - ")[1]
        artist_name = filename.split(" - ").first
        song = self.new(name)
        song.artist_name = artist_name
        song
    end

    def artist_name=(artist_name)
        artist = Artist.find_or_create_by_name(artist_name)
        artist.add_song(self)
    end
end
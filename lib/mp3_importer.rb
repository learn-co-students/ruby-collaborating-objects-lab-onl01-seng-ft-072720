require 'pry'

class MP3Importer
    
attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        files_arr =  Dir.entries(@path).select do |file| 
            file.end_with?(".mp3")
        end
    end
    

    def import
        self.files.each do |file|
        Song.new_by_filename(file)
        end
    end



end

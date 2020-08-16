class MP3Importer

    attr_accessor :path
    
      def initialize(path)
        @path = path
      end
    
      def files
        loaded_files = Dir.glob("#{path}/*.mp3")
        loaded_files.collect do |file|
          file.gsub("#{path}/", "")
        end
      end
    
      def import
        self.files.each do |file|
          Song.new_by_filename(file)
        end
      end
    end
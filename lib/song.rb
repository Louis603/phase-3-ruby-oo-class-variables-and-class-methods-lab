require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.artists
        @@artists.uniq
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # @@genres.tally
        tally = {}

        @@genres.each do |genre|
            binding.pry
            tally[genre] = tally[genre] ? tally[genre] +1 : 1
            
        end
        
        tally
    end
    def self.artist_count
        @@artists.tally
    end


end
binding.pry

["britney", "britney", "jayz", "jayz", "beyonce"]
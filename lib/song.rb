require "pry"
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    @@artist_count = {}

    def initialize(song_name, artist_name, genre_name)
        @@count += 1
        @@genres << genre_name
        @@artists << artist_name

        @name = song_name
        @artist = artist_name
        @genre = genre_name

        if @@artist_count["#{artist_name}"] === nil
            @@artist_count["#{artist_name}"] = 1
        else
            @@artist_count["#{artist_name}"] += 1
        end
        
    end

    def self.count
        @@count
    end

    def self.genres
        newArray = []
        @@genres.each {|genre_name|
            unless newArray.include?(genre_name)
                newArray << genre_name
            end
        }
        newArray
    end

    def genre
        @genre
    end

    def self.artists
        newArray = []
        @@artists.each {|artist_name|
            unless newArray.include?(artist_name)
                newArray << artist_name
            end
        }
        newArray
    end

    def self.genre_count
        new_hash  = {}
        @@genres.each {|genre_name|
            if new_hash["#{genre_name}"] != nil
                new_hash["#{genre_name}"] += 1
            else
                new_hash["#{genre_name}"] = 1
            end
        }
        new_hash
    end

    def self.artist_count
        @@artist_count
    end

end

Song.new("Yetet", "nice", "pop")
Song.new("Yetet", "nice", "pop")

pp Song.count
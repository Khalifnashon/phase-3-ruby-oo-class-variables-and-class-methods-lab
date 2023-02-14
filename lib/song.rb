require "pry"
class Song
    # Class Variables

        # Keeps track of number of new songs
        # Your #initialize method should use the @@count variable and increment 
        # the value of that variable by 1
        @@count = 0

        # Whenever a new song is initialized. Your #initialize method should 
        # add artists to the @@artists array.
        @@artists = []

        # Your #initialize method should add the genre of the song being 
        # created to the @@genres array
        @@genres = []

    # Instance Variables
    attr_accessor :name, :artist, :genre

    # Initialize method
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre

        # Incrementing and adding to the arrays
        @@count+=1
        @@artists << artist
        @@genres << genre
    end

     # Class Methods
     def self.count
        @@count
    end

    # Control for duplicates when you code your .artists class method, 
    # not when you add artists to the original @@artists array. 
    # We will want to know how many songs each have been assigned to each artist
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    # Song.genre_count: returns a hash in which the keys are the names of each genre. 
    # Each genre name key should point to a value that is the number of songs
    # that have that genre.
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
lucifer = Song.new("Lucifer", "Jay-Z", "rap")
hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
binding.pry
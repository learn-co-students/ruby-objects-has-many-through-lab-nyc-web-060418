class Artist

  attr_accessor :name, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end

  def genres
    @songs.map do |song|
      song.genre
    end.uniq
  end
  #binding.pry

end

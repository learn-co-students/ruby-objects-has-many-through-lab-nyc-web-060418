class Genre

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def new_song(name, artist)
    new_song = Song.new(name, artist, self)
    @songs << new_song
    new_song
  end

  def artists
    @songs.map do |song|
      #binding.pry
      song.artist
    end.uniq
  end
  #binding.pry

end

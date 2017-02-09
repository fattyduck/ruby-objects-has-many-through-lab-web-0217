class Artist

  attr_reader :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    @genres << song.genre
    @songs << song
    song.genre.artists << self
  end

end

class Song
  attr_accessor :name, :artist_name
  @@all = []

#  def initialize(name=nil)
#    @name = name
#    @@all = self
#  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = self.new
    new_song.save
    new_song
  end

end

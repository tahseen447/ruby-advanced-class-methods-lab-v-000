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
    self
  end

  def self.create
    new_song = self.new
    new_song.save
  end

  def self.new_by_name(name)
    new_song = self.new
    new_song.name = name
    new_song.save
  end

end

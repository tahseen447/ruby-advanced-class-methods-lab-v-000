class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name=nil)
    @name = name

  end
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

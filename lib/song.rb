class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all #class reader method that reads the data stored in class variable @@all#
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
     @name = name
    @@all << self
    name
  end

end

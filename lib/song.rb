class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all #class reader method that reads the data stored in class variable @@all#
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize 
    @@all = self 
  end

  def self.create
    @@all << self.new
end

def self.find_by_name(name)
  self.all.find{|song| song.name == name}
end

def self.destroy_all
  self.all.clear
end

end

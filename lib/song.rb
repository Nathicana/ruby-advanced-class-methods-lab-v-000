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
    song = self.new
    @@all << song
    song
  end

def self.new_by_name(name)
      song = self.new
      song.name = name
      song
    end


def self.create_by_name(name)
  ong = self.new
  song.name = name
  song
  @@all << song


  end

def self.find_by_name(name)
self.all.find{|song| song.name == name}
end

def self.alphabetical
    @@all.sort_by {|song| song.sort}
  end


def self.destroy_all
  self.all.clear
end

end

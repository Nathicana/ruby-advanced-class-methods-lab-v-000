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
     
    @@all << self
    
  end

  def self.find_by_name(name)
      self.all.find{|person| person.name == name}
    end


end

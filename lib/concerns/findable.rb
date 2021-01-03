
require 'pry'

module Findable

  def self.find_by_name(name)
    #Artist.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.find_by_song(song)
    #Song.find_by_name(song)
    @@songs.detect {|i| i.song == song}
  end

end


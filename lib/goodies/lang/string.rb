class ::String

  # String / String
  #
  # Overloaded '/' operator for String class as a substitute for File#join
  def /(to_join)
    File.join(self, to_join)
  end

end

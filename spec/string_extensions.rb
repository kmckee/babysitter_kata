class String
  def to_t
    Time.parse(self)
  end
end

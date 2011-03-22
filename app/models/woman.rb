class Woman < Human
  before_save :default_values

  def default_values
    self.sex= 0
  end
end

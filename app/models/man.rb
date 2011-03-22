class Man < Human
  before_save :default_values

  def default_values
    self.sex= 1
  end
end

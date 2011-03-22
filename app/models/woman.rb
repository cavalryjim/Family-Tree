class Woman < Human
  before_save {self.sex=0}
end

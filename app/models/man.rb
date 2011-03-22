class Man < Human
 before_save {self.sex=1}

end

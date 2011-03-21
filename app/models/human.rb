class Human < ActiveRecord::Base
  has_one :father, :class_name => "Man"
  has_one :mother, :class_name => "Woman"
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  def full_name
    [first_name, last_name].join(' ')
  end
end

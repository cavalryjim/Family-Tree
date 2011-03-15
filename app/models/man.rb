class Man < ActiveRecord::Base
  has_one :father, :class_name => 'Man'
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  has_many :children, :class_name => "Man"

  def full_name
    first_name + " " + last_name
  end
end

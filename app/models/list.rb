class List < ActiveRecord::Base
  attr_accessible :title

  has_many :items


end

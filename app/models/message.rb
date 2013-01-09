class Message < ActiveRecord::Base

  attr_accessible :content, :ancestry
  has_ancestry

end

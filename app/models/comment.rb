class Comment < ActiveRecord::Base

  attr_accessible :content, :ancestry, :parent_id
  has_ancestry

end

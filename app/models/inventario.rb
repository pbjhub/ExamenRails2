class Inventario < ActiveRecord::Base
  belongs_to :operation

  scope :inventoryUsed, ->{Operation.where(:worker_id => 1).ids}

end

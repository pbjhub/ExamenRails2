class Inventario < ActiveRecord::Base
  belongs_to :operation: :dependent => :delete_all

  scope :inventoryUsed, ->{Operation.where(:worker_id => 1).ids}

end

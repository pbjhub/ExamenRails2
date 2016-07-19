class Worker < ActiveRecord::Base
has_many :operations
validates :name, presence: true


scope :inventoryUsed, ->{(Operation.where(:worker_id => 1)).inventario_id}
end

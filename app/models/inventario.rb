class Inventario < ActiveRecord::Base
  belongs_to :operation, :dependent => :destroy
  before_destroy :saveToRegister

  scope :inventoryUsed, ->{Operation.where(:worker_id => 1).ids}


  def saveToRegister
		Register.create(:description => ("La pieza con serial " +self.serial+ " ha sido borrada"))
  end

end

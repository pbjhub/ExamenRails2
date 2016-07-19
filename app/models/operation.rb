class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventario
  before_destroy :saveToRegister

  scope :last5, ->{limit(5).order(:id =>:desc)}
  scope :lastDay, ->{ where("created_at >= ?", Time.now - 1.day) }


  def saveToRegister
		Register.create(:description => ( "La operación con referencia a la pieza"+ self.serial +"y al usuario"+ self.worker_id + self.name +"ha sido borrada"))
  end


end

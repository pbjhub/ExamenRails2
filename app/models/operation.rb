class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventario

  scope :last5, ->{limit(5).order(:id =>:desc)}
  scope :lastDay, ->{ where("created_at >= ?", Time.now - 1.day) }


end

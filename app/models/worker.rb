class Worker < ActiveRecord::Base
has_many :operations, :dependent => :delete_all
validates :name, presence: true

end

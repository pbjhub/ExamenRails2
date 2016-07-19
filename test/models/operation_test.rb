require 'test_helper'

class OperationTest < ActiveSupport::TestCase
 
 def setup
    @workerJ = workers(:one)
    @workerM = workers(:two)
    @Operation = operations(:one)
 end

 test "encargado" do

 assert @Operation.worker_id, "No jalo"

 end 

 end

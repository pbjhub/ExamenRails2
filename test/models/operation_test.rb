require 'test_helper'

class OperationTest < ActiveSupport::TestCase
 
 def setup
    @workerJ = workers(:one)
    @workerM = workers(:two)
    @Operation = operations(:one)
    @Inventario = inventarios(:two)
 end

 test "encargado" do

 assert @Operation.worker_id, "No jalo"

 end 

 test "tool_from_operation" do

 assert @Operation.inventario_id, "No jalo"

 end 

 test "operation_for_tool" do

 assert @Inventario.operation, "No jalo"

 end 





 end

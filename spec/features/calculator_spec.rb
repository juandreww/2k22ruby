# require './app/controllers/calculator_controller'
# require_dependency "app/controllers/calculator_controller"

describe CalculatorController, :type => :controller do
    describe "#add" do
        it "returns the sum of two numbers" do
            calculator = Calculator.new
            expect(calcualtor.add(5, 2)).to eql(7)
        end
    end
end
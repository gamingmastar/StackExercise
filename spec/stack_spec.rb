require 'spec_helper'

describe Stack do
  describe "#initialize" do
    it "create a new stack" do
      Stack.new.should_not be_nil 
    end
  end
  describe "#push" do
    it "has a push method" do
      Stack.new.should respond_to :push
    end
    it "allows an object to be pushed to it" do
      Stack.new.push 1
    end
  end
  describe "#pop" do
    it "has a pop method" do
      Stack.new.should respond_to :pop
    end
    it "returns nil when the stack is empty" do
      Stack.new.pop.should be_nil
    end
    it "returns the last item" do
      stack = Stack.new
      stack.push 1
      stack.pop.should eq 1
    end
  end
end
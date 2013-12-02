require 'spec_helper'

describe Stack do
  let(:stack) {Stack.new}
  describe "#initialize" do
    it "create a new stack" do
      stack.should_not be_nil 
    end
  end
  describe "#push" do
    it "has a push method" do
      stack.should respond_to :push
    end
    it "allows an object to be pushed to it" do
      stack.push 1
    end
  end
  describe "#pop" do
    it "has a pop method" do
      stack.should respond_to :pop
    end
    it "returns nil when the stack is empty" do
      stack.pop.should be_nil
    end
    it "returns the last item" do
      stack.push 1
      stack.pop.should eq 1
    end
    it "returns previously pushed items - last in, first out (LIFO)" do
      stack.push 2 
      stack.push "Hello"
      stack.push stack 
      stack.pop.should eq stack
      stack.pop.should eq "Hello"
      stack.pop.should eq 2
    end
  end
end
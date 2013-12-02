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
end
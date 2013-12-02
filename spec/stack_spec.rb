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
  end
end
require 'rspec'
require_relative 'eliza_questions'


describe 'Response' do
  describe "Dummies" do
    it "is an array" do
      expect(Response.add_dummies).to be_a(Array)
    end
    it "has three elements" do
      expect(Response.add_dummies.length).to eq(3)
    end
  end
end

describe 'Response' do
  describe "Responses" do
    it "should respond how has your health been" do
      expect(Response.get_answer('hurt')).to eq("How has your health been?")
    end
  end
end

describe 'Response' do
  describe "Responses" do
    it "should respond in caps" do
      expect(Response.get_answer('hurt!')).to eq("HOW HAS YOUR HEALTH BEEN?")
    end
  end
end


describe 'Response' do
  describe "Count" do
    10.times do |i|
      expect(Response.count)to eq(i)
    end
  end
end

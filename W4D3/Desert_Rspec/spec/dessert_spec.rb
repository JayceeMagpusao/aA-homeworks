require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq ("brownie")
    end

    it "sets a quantity" do
      expect(10.quantity).to eq (10)
    end

    it "starts ingredients as an empty array" do
      expects(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "tons") }.to raise_error("Amount must be a number")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect (dessert.ingredients).to_not include("sugar")
      dessert.add_ingredient("sugar")
      expect (dessert.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = %w(chocolate flour egg sugar butter)

      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end

      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.ingredients).to_not eq(ingredients)
      expect(brownie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(4)
      expect(brownie.quantity).to eq (10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(200) }.to raise_error("can't eat that much")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef). to receive(:titleize).and_return("Chef Ang the Last Pho Bender")
      expect(brownie.serve).to eq("Chef Ang the Last Pho Bender has made 10 brownies")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef). to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end

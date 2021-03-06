require 'rails_helper'

context "when the product has comments" do  
before do  
      @product = Product.create!(name: "enerjii bracelet")
      @user = User.create!(email: "test@gmail.com", password: "password", first_name: "test", last_name: "test")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Good bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Great bike!")
    end

it "returns the average rating of all comments" do  
expect(@product.average_rating).to eq (3)  
    end

it 'is not valid' do  
expect(Product.new(description: "nice bike")).not_to be_valid  
end  
end  
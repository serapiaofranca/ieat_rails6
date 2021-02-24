require 'rails_helper'

RSpec.describe Restaurant do
    it { should have_many(:products) }

    context "testing total of products" do
        it 'returns total of products of a specific restaurant' do
            restaurant = FactoryBot.create(:restaurant)
            prod1 = FactoryBot.create(:product, restaurant: restaurant)
            prod2 = FactoryBot.create(:product, restaurant: restaurant)
            prod3 = FactoryBot.create(:product, restaurant: restaurant)
            prod4 = FactoryBot.create(:product, restaurant: restaurant)

            expect(restaurant.total_of_products).to eq 4 
        end  
    end      
end

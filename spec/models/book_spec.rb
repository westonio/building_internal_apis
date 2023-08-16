require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Instance Methods' do
    it "calculate popularity high or low" do
      book1 = create(:book, number_sold: 1)
      book2 = create(:book, number_sold: 6)

      expect(book1.popularity).to eq('low')
      expect(book2.popularity).to eq('high')
    end
  end
end
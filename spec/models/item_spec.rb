require 'rails_helper'

describe Item do
  describe '#update' do
    it "is valid with a name, explaination, condition_id, responsibility_id, 
        prefecture_id, shipment_id, category_id, user_id, price" do
      # item = build(:item)
      # item = build(:item_with_image)
      item = create(:item_with_image)
    end
  end
end

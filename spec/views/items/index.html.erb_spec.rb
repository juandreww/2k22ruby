require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        sku: "Sku",
        title: "Title",
        nickname: "Nickname",
        price: 2.5,
        inventory: 3,
        fulfillment_fee: "Fulfillment Fee",
        float: "Float",
        unit_cost: 4.5
      ),
      Item.create!(
        sku: "Sku",
        title: "Title",
        nickname: "Nickname",
        price: 2.5,
        inventory: 3,
        fulfillment_fee: "Fulfillment Fee",
        float: "Float",
        unit_cost: 4.5
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", text: "Sku".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Nickname".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Fulfillment Fee".to_s, count: 2
    assert_select "tr>td", text: "Float".to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
  end
end

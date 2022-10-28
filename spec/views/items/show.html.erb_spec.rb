require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      sku: "Sku",
      title: "Title",
      nickname: "Nickname",
      price: 2.5,
      inventory: 3,
      fulfillment_fee: "Fulfillment Fee",
      float: "Float",
      unit_cost: 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Fulfillment Fee/)
    expect(rendered).to match(/Float/)
    expect(rendered).to match(/4.5/)
  end
end

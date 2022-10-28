require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      sku: "MyString",
      title: "MyString",
      nickname: "MyString",
      price: 1.5,
      inventory: 1,
      fulfillment_fee: "MyString",
      float: "MyString",
      unit_cost: 1.5
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[sku]"

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[nickname]"

      assert_select "input[name=?]", "item[price]"

      assert_select "input[name=?]", "item[inventory]"

      assert_select "input[name=?]", "item[fulfillment_fee]"

      assert_select "input[name=?]", "item[float]"

      assert_select "input[name=?]", "item[unit_cost]"
    end
  end
end

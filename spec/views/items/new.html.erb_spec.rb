require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
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

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

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

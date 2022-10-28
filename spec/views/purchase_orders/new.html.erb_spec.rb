require 'rails_helper'

RSpec.describe "purchase_orders/new", type: :view do
  before(:each) do
    assign(:purchase_order, PurchaseOrder.new(
      order_num: "MyString",
      status: "MyString",
      sales_channel: "MyString",
      order_total: "9.99",
      num_items_shipped: 1,
      num_items_unshipped: 1,
      payment_method: "MyString",
      shipping_price: 1.5,
      shipping_tax: 1.5,
      carrier: "MyString",
      tracking_number: "MyString",
      fulfillment_center: "MyString",
      return_reason: "MyString",
      notes: "MyText",
      ship_to_name: "MyString",
      ship_to_address: "MyString"
    ))
  end

  it "renders new purchase_order form" do
    render

    assert_select "form[action=?][method=?]", purchase_orders_path, "post" do

      assert_select "input[name=?]", "purchase_order[order_num]"

      assert_select "input[name=?]", "purchase_order[status]"

      assert_select "input[name=?]", "purchase_order[sales_channel]"

      assert_select "input[name=?]", "purchase_order[order_total]"

      assert_select "input[name=?]", "purchase_order[num_items_shipped]"

      assert_select "input[name=?]", "purchase_order[num_items_unshipped]"

      assert_select "input[name=?]", "purchase_order[payment_method]"

      assert_select "input[name=?]", "purchase_order[shipping_price]"

      assert_select "input[name=?]", "purchase_order[shipping_tax]"

      assert_select "input[name=?]", "purchase_order[carrier]"

      assert_select "input[name=?]", "purchase_order[tracking_number]"

      assert_select "input[name=?]", "purchase_order[fulfillment_center]"

      assert_select "input[name=?]", "purchase_order[return_reason]"

      assert_select "textarea[name=?]", "purchase_order[notes]"

      assert_select "input[name=?]", "purchase_order[ship_to_name]"

      assert_select "input[name=?]", "purchase_order[ship_to_address]"
    end
  end
end

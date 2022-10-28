require 'rails_helper'

RSpec.describe "purchase_orders/index", type: :view do
  before(:each) do
    assign(:purchase_orders, [
      PurchaseOrder.create!(
        order_num: "Order Num",
        status: "Status",
        sales_channel: "Sales Channel",
        order_total: "9.99",
        num_items_shipped: 2,
        num_items_unshipped: 3,
        payment_method: "Payment Method",
        shipping_price: 4.5,
        shipping_tax: 5.5,
        carrier: "Carrier",
        tracking_number: "Tracking Number",
        fulfillment_center: "Fulfillment Center",
        return_reason: "Return Reason",
        notes: "MyText",
        ship_to_name: "Ship To Name",
        ship_to_address: "Ship To Address"
      ),
      PurchaseOrder.create!(
        order_num: "Order Num",
        status: "Status",
        sales_channel: "Sales Channel",
        order_total: "9.99",
        num_items_shipped: 2,
        num_items_unshipped: 3,
        payment_method: "Payment Method",
        shipping_price: 4.5,
        shipping_tax: 5.5,
        carrier: "Carrier",
        tracking_number: "Tracking Number",
        fulfillment_center: "Fulfillment Center",
        return_reason: "Return Reason",
        notes: "MyText",
        ship_to_name: "Ship To Name",
        ship_to_address: "Ship To Address"
      )
    ])
  end

  it "renders a list of purchase_orders" do
    render
    assert_select "tr>td", text: "Order Num".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "Sales Channel".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Payment Method".to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
    assert_select "tr>td", text: "Carrier".to_s, count: 2
    assert_select "tr>td", text: "Tracking Number".to_s, count: 2
    assert_select "tr>td", text: "Fulfillment Center".to_s, count: 2
    assert_select "tr>td", text: "Return Reason".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Ship To Name".to_s, count: 2
    assert_select "tr>td", text: "Ship To Address".to_s, count: 2
  end
end

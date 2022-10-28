require 'rails_helper'

RSpec.describe "purchase_orders/show", type: :view do
  before(:each) do
    @purchase_order = assign(:purchase_order, PurchaseOrder.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Order Num/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Sales Channel/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Payment Method/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/Carrier/)
    expect(rendered).to match(/Tracking Number/)
    expect(rendered).to match(/Fulfillment Center/)
    expect(rendered).to match(/Return Reason/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ship To Name/)
    expect(rendered).to match(/Ship To Address/)
  end
end

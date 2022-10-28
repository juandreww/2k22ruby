class PurchaseOrder < ApplicationRecord
    has_many :order_items, dependent: :destroy

    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    settings index: { number_of_shards: 1 } do
        mapping dynamic: 'false' do
            indexes :id, type: :integer
            indexes :purchase_date, type: :date, format: :date_optional_time
            indexes :status, type: :keyword
            indexes :sales_channel, type: :keyword
            indexes :num_items_shipped, type: :integer
            indexes :num_items_unshipped, type: :integer
            indexes :payment_method, type: :keyword
            indexes :shipped_at, type: :date, format: :date_optional_time
            indexes :shipping_price, type: :half_float
            indexes :shipping_tax, type: :half_float
            indexes :carrier, type: :keyword
            indexes :tracking_number
            indexes :estimated_arrival_date, type: :date, format: :date_optional_time
            indexes :fulfillment_center, type: :keyword
            indexes :confirmed_at, type: :date, format: :date_optional_time
            indexes :returned_date, type: :date, format: :date_optional_time
            indexes :return_reason
            indexes :notes
            indexes :refunded_at, type: :date, format: :date_optional_time
            indexes :ship_to_name
            indexes :ship_to_address

            indexes :skus
            indexes :item_ids, type: :long

            indexes :unique_products, type: :integer
            indexes :quantity_ordered, type: :integer
            indexes :quantity_shipped, type: :integer
            indexes :quantity_unshipped, type: :integer
        end
    end
end

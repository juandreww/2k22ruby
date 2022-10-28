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
            indexes :id, type: :integer
            indexes :id, type: :integer
            indexes :id, type: :integer
            indexes :id, type: :integer
            indexes :id, type: :integer
            indexes :id, type: :integer
            indexes :id, type: :integer
        
        end
    end
end

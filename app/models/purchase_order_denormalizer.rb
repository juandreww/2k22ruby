class PurchaseOrderDenormalizer
    attr_reader purchase_order

    def initialize(purchase_order)
        @purchase_order = purchase_order
    end
end
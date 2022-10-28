class OrderPresenter
    attr_reader base_object
    def initialize(base_object)
        @base_object = if base_object.is_a?(ActiveRecord)
            OrderDenormalizer.new(base_object)
        else
            base_object
        end
    end

    def order_items_names
        order_items.map{|oi| oi.items.map(&:name) }.flatten
    end
end
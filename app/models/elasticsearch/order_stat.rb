class Elasticsearch::OrderStat
    attr_reader :title, :label, :avg_price

    def initialize(args = {})
        @title = args[:title]
        @label = args[:label]
        @avg_price = args[:avg_price]
    end
end
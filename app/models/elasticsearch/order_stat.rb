class Elasticsearch::OrderStat
    attr_reader :title, :label, :avg_price

    def initialize(args = {})
        @title = args[:title]
        @label = args[:label]
        @avg_price = args[:avg_price]
    end
    
    def self.repository
        @repository ||= Elasticsearch::EsRepository.new(client: Elasticsearch::Model.client,
            index_name: 'products_stats',
            type: :product_stats,
            klass: Elasticsearch::ProductStat)
    end
end
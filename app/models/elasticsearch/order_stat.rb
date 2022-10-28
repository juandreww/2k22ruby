class Elasticsearch::OrderStat
    attr_reader :title, :label, :avg_price

    def initialize(args = {})
        @title = args[:title]
        @label = args[:label]
        @avg_price = args[:avg_price]
    end
    
    def self.repository
        @repository ||= Elasticsearch::EsRepository.new(client: Elasticsearch::Model.client,
            index_name: 'order_stats',
            type: :order_stats,
            klass: Elasticsearch::OrderStat)
    end
end
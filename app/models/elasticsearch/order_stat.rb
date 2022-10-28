class Elasticsearch::OrderStat
    attr_reader :title, :label, :avg_price, :id

    def initialize(args = {})
        @title = args[:title]
        @label = args[:label]
        @avg_price = args[:avg_price]

        @id = "#{@title}-#{Time.current.to_i}"
    end
    
    def self.repository
        @repository ||= Elasticsearch::EsRepository.new(client: Elasticsearch::Model.client,
            index_name: 'order_stats',
            type: :order_stats,
            klass: Elasticsearch::OrderStat)

        @repository.settings index: { number_of_shards: 1 } do
            mapping dynamic: 'false' do
                indexes :title
                indexes :sku, type: :keyword
                indexes :price, type: :half_float
            end
        end

        @repository
    end

    def save
        Elasticsearch::OrderStat.repository.save self
    end

    def to_hash
        %i[
            id
            title
            label
            avg_price
        ].map { |method_name| [method_name, send(method_name)] }.to_h
    end
end
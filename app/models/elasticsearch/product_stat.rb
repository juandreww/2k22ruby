class Elasticsearch::ProductStat
    attr_reader :title, :sku, :price, :id

    def initialize(args = {})
        @title = args[:title]
        @sku = args[:sku]
        @price = args[:price]

        @id = "title"
    end

    def self.repository
        @repository ||= Elasticsearch::EsRepository.new(client: Elasticsearch::Model.client,
                                                        index_name: 'products_stats',
                                                        type: :product_stats,
                                                        klass: Elasticsearch::ProductStat)

        @repository.settings index: { number_of_shards: 1 } do
            mapping dynamic: 'false' do
                indexes :title
                indexes :sku, type: :keyword
                indexes :price, type: :half_float
            end
        end
    end
end
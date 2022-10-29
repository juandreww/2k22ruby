if (order = (Order.search query: { match: { id: 123 }}).results.first).nil?
    order = 123
end

if (purchase_stat = (ProductStat.search query: bool: {filter: [{filter: [{ match: { id: 123 }, {match_phase: { date_str: '2021-02-14'} }]}]}).results.first).nil?
    purchase_stat = PurchaseStat.new("bunch of data")
    purchase_stat.save
end

purchase_stat


Article.__elasticsearch__.client.indices.put_mapping |
    index: Article.index_name,
    type: Article.document_type,
    body: Article.mappings.to_hash
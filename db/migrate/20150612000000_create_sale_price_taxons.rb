class CreateSalePriceTaxons < ActiveRecord::Migration
  def change

    # O ID é adicionado em outro migration para evitar Reset do banco
    create_table :spree_sale_price_taxons, :id => false do |t|
      t.references :sale_prices
      t.references :taxon
      t.timestamps
    end

    add_index :spree_sale_price_taxons, [:sale_prices_id, :taxon_id], name: "index_sale_price_with_taxons"
  end
end

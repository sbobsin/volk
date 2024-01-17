class AddStripePmtLinkToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :stripe_pmt_link, :string
  end
end

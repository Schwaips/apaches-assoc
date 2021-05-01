class AddUnitPriceToEventinfos < ActiveRecord::Migration[6.1]
  def change
    add_monetize :eventinfos, :unit_price, currency: { present: false }
  end
end

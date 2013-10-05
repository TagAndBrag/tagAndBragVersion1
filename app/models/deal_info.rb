class DealInfo < ActiveRecord::Base
  attr_accessible :date, :description, :imageLink, :price, :sitelink, :title
  def self.get_belt

    deal_prices = DealInfo.select("price")

    total_amount = get_amount(deal_prices)

    belt_number = total_amount/100 

    belt_number

  end



  def self.get_amount(deal_prices)
    total_amount = 0
    deal_prices.each do |deal_price|
      
      total_amount = total_amount + deal_price.price.to_i

    end
    total_amount
  end



  def self.current_points

    deal_prices = DealInfo.select("price")

    total_amount = get_amount(deal_prices)

    points = total_amount/10

    points


  end
end

class CreateDealInfos < ActiveRecord::Migration
  def change
    create_table :deal_infos do |t|
      t.string :title
      t.string :price
      t.string :description
      t.string :imageLink
      t.string :sitelink
      t.string :date

      t.timestamps
    end
  end
end

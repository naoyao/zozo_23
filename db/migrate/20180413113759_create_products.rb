
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :name,             null: false
      t.integer  :normal_price ,    null: false
      t.integer  :discount_price
      t.integer  :tax,              null: false
      t.integer  :price_status
      t.text     :comment_1
      t.text     :comment_2
      t.integer  :small_category,   null: false
      t.integer  :large_category,   null: false
      t.integer  :sexual_category
      t.date     :release_date
      # t.references :brands, foreign_keys: true, null: false
      # t.references :shops , foreign_key: true, null: false
      #==================================
      #上記FKはテーブル未作成のためコメントアウト
      #==================================
    end
  end
end

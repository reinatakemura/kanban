class Card < ApplicationRecord
  belongs_to :list
  
  validates :title, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
  
  include RankedModel
  ranks :row_order
  
  enum status: {
    "未実施": "0",
    "実施中": "1",
    "達成": "2"
  }

end  

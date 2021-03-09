class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :thoughts, through: :messages, dependent: :destroy

  validates_presence_of :title, :start_date

  def self.search(query)
    
    if query.present?
      where('TITLE like ?', "%#{query}%")
    else
      self.all
    end
  end
end

class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Class method to retrieve all angular portfolio items.
  def self.angular
    where(subtitle: "Angular")
  end
  
  # Also a class method / lambda created to show another way to get portfolio items.
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
end

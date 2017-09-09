class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Class method to retrieve all angular portfolio items.
  def self.angular
    where(subtitle: "Angular")
  end

  # Also a class method / lambda created to show another way to get portfolio items.
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}

  # Implementing a callback
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end
end

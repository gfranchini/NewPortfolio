module Placeholder
  # Extend loads helper modules
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
end

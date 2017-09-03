module Placeholder
  extend ActiveSupport::Concern
  
  def self.image_generator(height:, width:)
    "https://unsplash.it/#{width}/#{height}?random"
  end
end
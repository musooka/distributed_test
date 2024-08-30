class Product < ApplicationRecord 
    scope :by_name, ->(name) { where("name LIKE ?",name.blank? ? "%%" : "%#{name.downcase}%")}
    scope :by_description, ->(description) { where("description LIKE ?", description.blank? ? "%%" :"%#{description.downcase}%")}

    def self.order_by_price(asc:)
        asc ? self.order(:price) : self.order(price: :desc)
    end
    def self.order_by_created_at(asc:)
        asc ? self.order(:created_at) : self.order(created_at: :desc)
    end
end
  
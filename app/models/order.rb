class Order < ApplicationRecord::Base
    belongs_to :product
    belongs-to :user
end


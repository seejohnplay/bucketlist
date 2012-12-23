class Item < ActiveRecord::Base
  attr_accessible :list_id, :status, :title, :url
end

class MenuItem < ActiveRecord::Base
  belongs_to :menu_category
  validates_presence_of :title
end

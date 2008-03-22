# == Schema Information
# Schema version: 12
#
# Table name: events
#
#  id         :integer(11)     not null, primary key
#  public     :boolean(1)      
#  item_id    :integer(11)     
#  item_type  :string(255)     
#  created_at :datetime        
#  updated_at :datetime        
#

class Event < ActiveRecord::Base
  belongs_to :item, :polymorphic => true
  has_many :feeds
end

class Message < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :name, presence: true

  def self.message_list
    return Message.all.order(:created_at => :desc)
  end  
end

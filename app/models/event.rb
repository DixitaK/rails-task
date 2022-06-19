class Event < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings, through: :locations
  belongs_to :category
  has_many :notifications, as: :notifiable

  after_create :create_notification

  private
  def create_notification
    self.notifications.create(message:"#{self.name} Event Update")
  end
end

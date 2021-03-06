class Organization < ActiveRecord::Base
  validates_presence_of :name, :about, :address
  validates :phone, presence: true, phony_plausible: true
  validates :email, presence: true, email: true
  validates :category, presence: true
  scope :by_category, lambda {|c| where(category: c.classify)}
  mount_uploader :image, ImageUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  def self.categories
    ['Church', 'Ministry', 'Business', 'School']
  end
end

class Album < ActiveRecord::Base

 belongs_to :user
 has_many :photos, :dependent => :destroy
 
 accepts_nested_attributes_for :photos, reject_if: proc { |attributes| attributes['image'].blank? }

end

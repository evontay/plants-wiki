class Plant < ApplicationRecord
    paginates_per 10
    has_and_belongs_to_many :locations
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates_uniqueness_of :name, :case_sensitive => false

end

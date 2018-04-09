class Slug < ApplicationRecord
	mount_uploader :Image, ImageUploader

	mount_uploader :Logo, LogoUploader

	def next
    Slug.where("id > ?", id).limit(1).first
    end

    def previous
    	Slug.where("id < ?", id).limit(1).last
    end


end

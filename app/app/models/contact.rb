class Contact < ApplicationRecord

  validates presence_of :Name, :Email, true
end

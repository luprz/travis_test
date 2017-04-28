class Contact < ApplicationRecord
  validates_presence_of :firstname, :lastname
  validates_length_of :message, minimum: 1

  def fullname
    "#{self.firstname} #{self.lastname}"
  end
end

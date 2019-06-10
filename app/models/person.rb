class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attribues_for :addresses
end

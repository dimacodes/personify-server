class Person < ApplicationRecord
  validates_presence_of :name, :message => "can't be blank"
  validates_presence_of :favoriteCity, :message => "can't be blank"
end

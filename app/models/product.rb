class Product < ActiveRecord::Base

  serialize :feature , Array
end

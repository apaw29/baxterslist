class Deal < ActiveRecord::Base
  attr_accessible :category, :contactemail, :contactname, :contactnumber, :description, :postdate, :price, :title
def self.all_category
 %w(Electronics Books Housing Auto Others)
end

end

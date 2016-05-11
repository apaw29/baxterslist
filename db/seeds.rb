# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

deals = [{:title => 'Ruby on Rails', :category => 'Books', :price => '$35', :description=>'Tutorial on how to use Ruby on Rails ', :contactname => 'Apeksha Pawar', :contactnumber => '7328535808', :contactemail => 'apawar2@binghamton.edu'},
          {:title => 'iPhone 5s', :category => 'Electronics', :price => '$500', :description=>'in good working condition', :contactname => 'Apeksha Pawar', :contactnumber => '7328535808', :contactemail => 'apawar2@binghamton.edu'},
          {:title => 'Room for rent in 2 bedroom apartment', :category => 'Housing', :price => '$475',:description=>'close to BU stops', :contactname => 'Apeksha Pawar', :contactnumber => '7328535808', :contactemail => 'apawar2@binghamton.edu'},
          {:title => 'Bass Guitar', :category => 'Other', :price => '$40',:description=>'good condition', :contactname => 'Apeksha Pawar', :contactnumber => '7328535808', :contactemail => 'apawar2@binghamton.edu'},
          {:title => 'Aloy Wheels', :category => 'Auto', :price => '$450',:description=>'for honda civic', :contactname => 'Apeksha Pawar', :contactnumber => '7328535808', :contactemail => 'apawar2@binghamton.edu'},
         ]

deals.each do |deal|
  Deal.create!(deal)
end

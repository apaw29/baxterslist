class CreateDeals < ActiveRecord::Migration
  def up
    create_table :deals do |t|
      t.string :title
      t.string :category
      t.string :price
      t.string :description
      t.string :contactname
      t.string :contactnumber
      t.string :contactemail
      t.datetime :postdate

      t.timestamps
    end
  end

  def down
    drop_table :deals
  end
end

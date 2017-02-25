class Location < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :location, index: true, foreign_key: true
  end
end

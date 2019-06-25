class CreateSwFish < ActiveRecord::Migration
  def change
  	create_table :saltwater_fishes do |t|
  		t.string :species
  		t.string :color
  		t.string :name
	end

  end
end

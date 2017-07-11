class CreateNews < ActiveRecord::Migration
  def change
  	create_table :news, id: :uuid do |t|
  		t.string :title
  		t.string :subtitle
  		t.string :description
  		t.text :content
  		t.time :release_time
  		t.string :author
  		t.string :author

  		t.timestamps
  	end
  end
end

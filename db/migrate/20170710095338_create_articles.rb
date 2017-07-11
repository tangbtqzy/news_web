class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.string :author
      t.datetime :date
      t.string :sub_title
      t.uuid :source_id

      t.timestamps
    end
  end
end

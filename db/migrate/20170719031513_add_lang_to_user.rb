class AddLangToUser < ActiveRecord::Migration
  def change
    add_column :users, :lang, :string, :default => "zh-CN"
  end
end

class AddColumnToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :public, :boolean
  end
end

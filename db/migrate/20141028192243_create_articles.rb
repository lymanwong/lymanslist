class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :content
      t.string :URL
      t.belongs_to :category
    end
  end
end

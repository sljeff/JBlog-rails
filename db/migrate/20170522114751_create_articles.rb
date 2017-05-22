class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.belongs_to :category, index: true
      t.belongs_to :author
      t.string :title
      t.string :slug
      t.text :md_content
      t.text :html_content

      t.timestamps
    end
    add_index :articles, :slug
  end
end

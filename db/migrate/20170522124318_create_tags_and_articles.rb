class CreateTagsAndArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :tags_and_articles do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :article, index: true
    end
  end
end

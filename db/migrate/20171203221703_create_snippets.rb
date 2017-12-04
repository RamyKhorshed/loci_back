class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.string :content
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end

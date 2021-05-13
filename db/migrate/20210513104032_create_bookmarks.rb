class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :list, foreign_key: true
      t.references :movie, foreign_key: true
      t.timestamps
    end
  end
end

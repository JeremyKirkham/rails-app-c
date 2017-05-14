class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

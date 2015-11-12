class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :from_phone_no
      t.string :to_phone_no
      t.text :body

      t.timestamps null: false
    end
  end
end

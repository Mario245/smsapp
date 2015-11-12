class CreateSmsmsgs < ActiveRecord::Migration
  def change
    create_table :smsmsgs do |t|
      t.string :phone_no_to
      t.string :phone_no_from
      t.text :body

      t.timestamps null: false
    end
  end
end

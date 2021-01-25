class CreateSubComments < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_comments do |t|
      t.references :post, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end

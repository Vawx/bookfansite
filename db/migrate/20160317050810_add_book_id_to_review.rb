class AddBookIdToReview < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.column :book_id, :integer
    end
  end
end

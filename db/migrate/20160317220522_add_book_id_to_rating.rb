class AddBookIdToRating < ActiveRecord::Migration
  def change
    change_table :ratings do |t|
      t.column :book_id, :integer
    end
  end
end

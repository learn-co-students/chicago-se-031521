class CreateUserSnacks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_snacks do |t|
      t.integer :rating
      t.string :review
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :snack, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |table_helper|
      table_helper.string(:name)
      table_helper.string(:color)
      table_helper.string(:height)
    end
  end
end

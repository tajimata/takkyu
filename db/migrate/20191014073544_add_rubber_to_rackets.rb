class AddRubberToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :rubber, :string
  end
end

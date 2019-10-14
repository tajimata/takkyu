class AddRubberBackToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :rubber_back, :string
  end
end

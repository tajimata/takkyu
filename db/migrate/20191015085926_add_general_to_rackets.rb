class AddGeneralToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :general, :integer
  end
end

class AddControlToRackets < ActiveRecord::Migration[5.2]
  def change
    add_column :rackets, :control, :integer
  end
end

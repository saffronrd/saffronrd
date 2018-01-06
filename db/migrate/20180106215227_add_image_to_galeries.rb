class AddImageToGaleries < ActiveRecord::Migration
  def change
    add_column :galeries, :image, :string
  end
end

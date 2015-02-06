class CreateStylings < ActiveRecord::Migration
  def change
    create_table :stylings do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end

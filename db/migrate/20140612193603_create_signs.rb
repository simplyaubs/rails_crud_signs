class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :sign
      t.string :color
    end
  end
end

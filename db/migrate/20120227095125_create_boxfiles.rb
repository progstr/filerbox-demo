class CreateBoxfiles < ActiveRecord::Migration
  def change
    create_table :boxfiles do |t|
      t.string :file

      t.timestamps
    end
  end
end

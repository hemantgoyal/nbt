class CreateMaillinglists < ActiveRecord::Migration
  def change
    create_table :maillinglists do |t|
      t.string :email

      t.timestamps
    end
  end
end

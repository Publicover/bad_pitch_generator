class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :word
      t.integer :conjunction

      t.timestamps
    end
  end
end

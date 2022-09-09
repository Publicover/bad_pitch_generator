class CreateVerbs < ActiveRecord::Migration[6.1]
  def change
    create_table :verbs do |t|
      t.string :word

      t.timestamps
    end
  end
end

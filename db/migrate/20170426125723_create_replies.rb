class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.belongs_to :invitation
      t.text :content
      
      t.timestamps
    end
  end
end

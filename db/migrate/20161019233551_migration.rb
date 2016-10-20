class Migration < ActiveRecord::Migration[5.0]
  def change
  	create_table :posts do |t|
  		t.text   :head
  		t.text   :body
  		t.string :subject
  		t.timestamps

  	end
  end
end

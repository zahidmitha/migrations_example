class UserPostsTable < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :name
    end

    add_column :posts, :user_id, :integer


  end
end

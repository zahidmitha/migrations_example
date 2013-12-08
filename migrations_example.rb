# Migrations
#Rails g migration CreateTagsTable
# rake db:miggrate
# git add.
# git commit


class CreateTagsTable < ActiveRecordMiggration

  def change
    create)table :tags do |t|
      t.string :name
      t.timestamps
  end

end
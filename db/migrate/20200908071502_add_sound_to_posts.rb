class AddSoundToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :sound, :boolean, default: false
  end
end

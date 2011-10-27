require 'digest/md5'

class Jot
  include Sandra

  before_create :set_md5sum

  key_attribute :md5sum, :string
  column :copy, :string
  column :user, :string

  def set_md5sum
    self.md5sum = Digest::MD5.hexdigest(self.copy + self.user)
  end
end

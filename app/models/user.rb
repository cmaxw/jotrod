class User
  include Sandra

  validates_confirmation_of :password

  key_attribute :username
  column :email_address
  column :password

  def insert(key, columns = {})
    columns.stringify_keys!
    if columns['confirm_password'] == columns['password']
      super
    else
      return false
    end
  end
end

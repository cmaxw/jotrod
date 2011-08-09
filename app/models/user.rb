class User
  include Sandra

  key_attribute "username"

  def insert(key, columns = {})
    columns.stringify_keys!
    if columns['confirm_password'] == columns['password']
      super
    else
      return false
    end
  end
end

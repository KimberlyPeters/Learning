require 'sqlite3'

class User
  attr_accessor :id, :firstname, :lastname, :age, :password, :email

  def initialize(id = 0, firstname, lastname, age, password, email)
    @id = id
    @firstname = firstname
    @lastname = lastname
    @age = age
    @password = password
    @email = email
  end

  def self.setup_database
    begin
      db = SQLite3::Database.open 'db.sql'
      db.execute('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, firstname TEXT, lastname TEXT, age INTEGER, password TEXT, email TEXT)')
      db.results_as_hash = true
      return db
    rescue SQLite3::Exception => error
      puts "Encountered error: #{error}"
    end
  end

  def self.create(user_info)
    db = setup_database
    db.execute(
      'INSERT INTO users (firstname, lastname, age, password, email) VALUES (?, ?, ?, ?, ?)',
      user_info[:firstname],
      user_info[:lastname],
      user_info[:age],
      user_info[:password],
      user_info[:email]
    )
    user_id = db.last_insert_row_id
    db.close

    User.new(
      user_id,
      user_info[:firstname],
      user_info[:lastname],
      user_info[:age],
      '',
      user_info[:email]
    )
  end

  def self.find(user_id)
    db = setup_database
    result = db.execute('SELECT * FROM users WHERE id = ?', user_id)
    db.close

    if result.empty?
      nil
    else
      user_data = result.first
      User.new(
        user_data['id'],
        user_data['firstname'],
        user_data['lastname'],
        user_data['age'],
        user_data['password'],
        user_data['email']
      )
    end
  end

  def self.all
    db = setup_database
    all_users = db.execute('SELECT * FROM users')
    db.close
    all_users
  end

  def self.update(user_id, attribute, value)
    db = setup_database
    db.execute("UPDATE users SET #{attribute} = ? WHERE id = ?", value, user_id)
    result = db.execute('SELECT * FROM users WHERE id = ?', user_id)
    db.close
    result
  end

  def self.destroy(user_id)
    db = setup_database
    delete_user = db.execute("DELETE FROM users WHERE id = #{user_id}")
    db.close
    delete_user
  end

  def self.authenticate(password, email)
    db = setup_database
    auth_user = db.execute('SELECT * FROM users WHERE email = ? AND password = ?', email, password)
    db.close
    auth_user
  end
end

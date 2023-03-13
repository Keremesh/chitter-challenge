require "user_repository"
require "pg"

def reset_users_table
  seed_sql = File.read('spec/seeds_users.sql')
  connection = PG.connect({ host: '127.0.0.1', dbname: 'chitter_test' })
  connection.exec(seed_sql)
end

RSpec.describe UserRepository do
  before(:each) do 
    reset_users_table
  end

  it "gets all users" do
    repo = UserRepository.new
    users = repo.all

    expect(users.length).to eq(2)
    expect(users.first.name).to eq('Anna')
    expect(users.first.username).to eq('Anna2')
    expect(users.first.email).to eq('ana@a.com')
    expect(users.first.password).to eq('password_anna')
  end
end

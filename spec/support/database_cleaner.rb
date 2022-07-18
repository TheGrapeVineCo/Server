RSpec.configure do |config|
  # empties all databases before each test is run
  config.before(:suite) do
    DatabaseCleaner.clean_with :truncation, except: %w(ar_internal_metadata)
  end

  # will clean DB of any leftover data and roll back transactions between each test
  config.before(:each) do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.strategy = :transaction
  end

  # starts db cleaning process before each test
  config.before(:each) do
    DatabaseCleaner.start
  end

  # ends db cleaning process before each test
  config.after(:each) do
    DatabaseCleaner.clean
  end
end

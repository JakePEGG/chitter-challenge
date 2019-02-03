require_relative '/Users/jakeatkin/projects/weekend_challenges/Chitter/chitter-challenge/lib/peeps.rb'
require 'pg'


describe Peep do
  describe '.all' do
    it 'Shows a list of peeps' do
      connection = PG.connect(dbname: 'chitter_test')
      connection.exec("INSERT INTO peep VALUES(1, 'First peep woo')")

      peep = Peep.all
      expect(peep).to include('First peep woo')
    end
  end
end

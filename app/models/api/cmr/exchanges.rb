module Api
  class Cmr::Exchanges < WashOut::Type
    type_name 'exchanges'

    map exchange_id: :integer,
        points: :integer,
        cash: :integer
    def self.fetch exchanges
      exchanges.map { |exchange| { points: exchange.points, cash: exchange.cash } }
    end
  end
end
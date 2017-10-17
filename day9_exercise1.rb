# module for tanggal
module Tanggal
  require 'date'

  def self.kabisat
    leaps = []
    start_date = Date.new(2000)
    end_date = Date.new(2999)

    start_date.year.upto(end_date.year) do |year|
      leaps << year if Date.leap?(year)
    end

    leaps
  end

  def self.format(date)
    date.strftime('%d/%m/%Y')
  end

  def self.nama_bulan(date)
    Date::MONTHNAMES[date.month]
  end
end

puts Tanggal.kabisat
puts Tanggal.format(Date.today)
puts Tanggal.nama_bulan(Date.today)

def how_many_times(monthly_fee, individual_ticket)
  times = monthly_fee / individual_ticket.to_f
  puts times.ceil
end

how_many_times(40, 15)
how_many_times(30, 10)
how_many_times(80, 15)

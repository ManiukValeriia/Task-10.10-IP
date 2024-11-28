puts valid_ipv4?('192.168.1.1')   # true
puts valid_ipv4?('0.0.0.0')       # true
puts valid_ipv4?('255.255.255.255') # true
puts valid_ipv4?('256.256.256.256') # false
puts valid_ipv4?('192.168.01.1')   # false (ведучий нуль)
puts valid_ipv4?('192.168.1.01')   # false (ведучий нуль)
puts valid_ipv4?('192.168.1')      # false (не вистачає частин)
puts valid_ipv4?('192.168.1.256')  # false (число перевищує 255)
puts valid_ipv4?('192.168.a.1')    # false (не число)

require 'mysql'
con = Mysql.new('localhost', 'root','root','myapp_development')
rs = con.query('select * from person')
rs.each_hash {|h| puts h['name']}
con.close
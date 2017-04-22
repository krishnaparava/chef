#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd'

file '/var/www/html/index.html' do 
    content "<h1>Hello,  World </h1>
	     <h2>ipaddress:  #{node['ipaddress']}</h2>
   	     <h3>hostname:  #{node['hostname']}</h3>
            "
            

end

service 'httpd' do
   action [ :enable, :start]
end






 

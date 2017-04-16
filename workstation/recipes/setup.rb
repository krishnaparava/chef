package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

file '/etc/motd' do
  content 'property of krishna'
  owner 'root'
  group 'root'
end



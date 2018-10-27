#
# Cookbook:: bcf_nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved
package "nginx" do
end
service "nginx" do
  action [:enable, :start]
end 
file "/usr/share/nginx/html/index.html" do
  content "<h1> hello, world </h2>"
  action :create
  not_if { ::File.exists?("/usr/share/nginx/html/index.html")}
end

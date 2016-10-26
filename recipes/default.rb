#
# Cookbook Name:: stress-ng
# Recipe:: default
#

git '/tmp/stress-ng-build' do 
    repository node['stress-ng']['repo']['url']
    revision node['stress-ng']['repo']['revision']
    user nobody
    action :sync
end

bash './configure' do
    cwd '/tmp/shress-ng-build'
    action :nothing
    subscribes :execute, 'git[/tmp/stress-ng-build]', :immediate
end

bash 'make' do 
    cwd '/tmp/shress-ng-build'
    action :nothing
    subscribes :execute, 'bash[./configure]', :immediate
end

bash 'make install' do 
    cwd '/tmp/shress-ng-build'
    action :nothing
    subscribes :execute, 'bash[make]', :immediate
end
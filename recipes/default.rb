#
# Cookbook Name:: simplelog_handler
# Recipe:: default
#
# Copyright 2013, HiganWorks LLC.
#

Chef::Config[:report_handlers] << Chef::Handler::SimpleLog.new
Chef::Config[:exception_handlers] << Chef::Handler::SimpleLog.new


# Cookbook Name:: simplelog_handler
# Library:: default
#
# Copyright 2013, HiganWorks LLC.
#

class Chef::Handler::SimpleLog < ::Chef::Handler
  def report
    Chef::Log.info '======= All Resources are following...'
    data[:all_resources].each.with_index do |r,idx|
      Chef::Log.send(node[:simplelog_handler][:log_level].to_sym, [idx, r.to_s].join(':'))
    end
    Chef::Log.info '======= Update Resources are following...'
    data[:updated_resources].each.with_index do |r,idx|
      Chef::Log.send(node[:simplelog_handler][:log_level].to_sym ,[idx, r.to_s].join(':'))
    end

    if exception
    Chef::Log.err '======= Chef Run failed. Exception is following...'
      ## pending
    end
  end
end

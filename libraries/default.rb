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
    Chef::Log.error '======= Chef Run failed. Exception is following...'
    Chef::Log.error ["Exception: ", run_status.formatted_exception ].join
    if node[:simplelog_handler][:show_backtrace]
      Chef::Log.error '========== BackTrace'
      run_status.backtrace.each do |line|
        Chef::Log.error ["= ", line].join
      end
    end
    end
  end
end

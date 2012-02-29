#!/usr/bin/env ruby
#
# A simple "wrapper" script that is used to daemonize the rz_mk_control_server
# script (which represents the primary Microkernel Controller)
#
# EMC Confidential Information, protected under EMC Bilateral Non-Disclosure Agreement.
# Copyright © 2012 EMC Corporation, All Rights Reserved
#
# @author Tom McSweeney

require 'rubygems'
require 'daemons'

options = {
  :ontop      => false,
  :multiple => false,
  :log_dir  => '/tmp',
  :backtrace  => true,
  :log_output => true
}

Daemons.run('/usr/local/bin/rz_mk_control_server.rb', options)

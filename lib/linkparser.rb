#!/usr/bin/ruby

# The LinkParser top-level namespace.
#  
# @author Michael Granger <ged@FaerieMUD.org>
# @author Martin Chase <stillflame@FaerieMUD.org>
#  
module LinkParser

	require 'linkparser/sentence'
	require 'linkparser/linkage'

	# Release version
	VERSION = '1.0.7'

	# Load the correct version if it's a Windows binary gem
	if RUBY_PLATFORM =~/(mswin|mingw)/i
		major_minor = RUBY_VERSION[ /^(\d+\.\d+)/ ] or
			raise "Oops, can't extract the major/minor version from #{RUBY_VERSION.dump}"
		require "#{major_minor}/linkparser_ext"
	else
		require 'linkparser_ext'
	end

end # class LinkParser


module Puppet::Parser::Functions
  newfunction(:basename, :type => :rvalue, :doc => <<-EOS
    Strips directory (and optional suffix) from a filename
    EOS
  ) do |arguments|

    if arguments.size < 1 then
      raise(Puppet::ParseError, "basename(): No arguments given")
    elsif arguments.size == 1 then
      rv = File.basename(arguments[0])
    elsif arguments.size == 2 then
      rv = File.basename(arguments[0], arguments[1])
    else
      raise(Puppet::ParseError, "basename(): Too many arguments given (#{arguments.size})")
    end

    return rv
  end
end

# vim: set ts=2 sw=2 et :

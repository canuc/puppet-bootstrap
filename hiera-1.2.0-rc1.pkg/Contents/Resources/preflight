#!/bin/bash
#
# Make sure that old hiera cruft is removed
# This also allows us to downgrade facter as
# it's more likely that installing old versions
# over new will cause issues.
#
# ${3} is the destination volume so that this works correctly
# when being installed to volumes other than the current OS.






# remove libdir


/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/backend/json_backend.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/backend/yaml_backend.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/backend.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/config.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/console_logger.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/noop_logger.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/puppet_logger.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera/util.rb"

/bin/rm -Rf "${3}/usr/lib/ruby/site_ruby/1.8/hiera.rb"

# remove bin files


/bin/rm -Rf "${3}/usr/bin/hiera"



# remove old doc files
/bin/rm -Rf "${3}/usr/share/doc/hiera"

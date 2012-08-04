require 'logger'
require 'tee'

logfile = open(File.expand_path('../../tmp/tee-log', __FILE__), 'ab')
logfile.tee $stdout
log = Logger.new(logfile)
log.info 'start'
log.warn 'warn!'
log.info 'end'

#http://railscasts.com/episodes/164-cron-in-ruby?view=asciicast


# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 5.minutes do
  # http://stackoverflow.com/questions/14278830/rails-cron-not-sending-emails
  command "echo '++++++++++++++++++++++++++++'"
  runner "Test.print_incense_log"
end



#set :output ENV["CRON_PATH"]

#every :hour do
#  # http://stackoverflow.com/questions/14278830/rails-cron-not-sending-emails
#  user = User.find_by_email('patrick.schreiber+87387847837872@themisbar.com')
#  runner UserMailer.welcome_email(user)
#end

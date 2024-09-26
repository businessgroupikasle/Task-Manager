# config/schedule.rb
every 10.seconds do
  runner "UserLog.all.each { |log| ActiveTimeWorker.perform_async(log.id) }"
end

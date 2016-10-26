every 1.day do
  runner 'SendMsgsJob.perform_later'
end

def task_tracker(text)
  if text.nil?
    fail "No input given."
  else
    text.include? "@TODO"
  end
end
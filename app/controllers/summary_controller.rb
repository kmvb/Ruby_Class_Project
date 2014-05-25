class SummaryController < ApplicationController
  def index
	@tasks = current_user.tasks
	@results = @tasks.group_by {|t| t.exercise.title }
  end
end

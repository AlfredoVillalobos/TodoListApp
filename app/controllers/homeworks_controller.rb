class HomeworksController < ApplicationController
  def taks_list
    @homewokrs = Homework.all
  end

  def show
    @homewokr = Homework.find(params[:id])
    @users_completed_tasks = @homewokr.users.map {|u| u.email}
  end
end

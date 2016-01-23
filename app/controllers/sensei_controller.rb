class SenseiController < ApplicationController
  def index
  end

  def analyze
    group_id = BsuirFinder.find_group_id params[:group_number]
    flash[:alert] = 'Group not found' unless group_id

    if group_id
      teachers = BsuirFinder.find_teachers group_id
      @opinions = []
      teachers.each { |teacher| @opinions << BsuirFinder.find_comments(teacher) }
    end

    respond_to do |format|
      format.html { render @opinions.flatten }
      format.js
    end
  end
end

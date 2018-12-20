class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if user_signed_in?
      @recent_projects = Project.all.last(2)
      @recent_tasks = Task.all.last(6)
    	@project_count = current_user.projects.count
    	@task_count = Task.all.where(:assign_task_user_id => current_user.id).count
      @team_count = current_user.teams.count
      @clients = User.where(role: "client")
      
      # task progress  chart
      @pieSize = {
  	    :height => 350,
  	    :width => 350
  	  }

  	  @pieData = [
        {
          value: Task.all.where(:priority => "High").count,
          color:"#F7464A",
          highlight: "#FF5A5E",
          label: "On hold"
        },
        {
          value: Task.all.where(:priority => "Low").count,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Done"
        },
        {
          value: Task.all.where(:priority => "Medium").count,
          color: "#FDB45C",
          highlight: "#FFC870",
          label: "On going"
        }
      ].to_json

      # project progress chart
      @pieSize_1 = {
  	    :height => 350,
  	    :width => 350
  	  }
  	  @pieData_1 = [
        {
          value: Task.all.where(:status => "done").count,
          color:"#F7464A",
          highlight: "#FF5A5E",
          label: "Blockers"
        },
        {
          value: Task.all.where(:status => "ready for testing").count,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Done"
        },
        {
            value: Task.all.where(:status => "in progress").count,
            color: "#949FB1",
            highlight: "#A8B3C5",
            label: "On going"
          },
          {
            value: Task.all.where(:status => "to do").count,
            color: "#4D5360",
            highlight: "#616774",
            label: "On hold"
          }
      ].to_json
    end
  end
end

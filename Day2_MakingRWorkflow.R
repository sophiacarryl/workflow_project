library("workflowr")


wflow_git_config(
  user.name = "sophiacarryl",
  user.email = "scarryl@uchicago.edu"
)



wflow_start("~/Desktop/R-Scripts/RWorkshop_Sept20_2018/RWorkShop/workflow_project/") #create directory
wflow_open("analysis/test_analysis.Rmd") #open R markdown called test_analysis #command + shift + k knits your R markdown file
wflow_build() #preview R markdown file
wflow_git_remote("origin", "sophiacarryl", "workflow-project") #connects your R to github.com

wflow_publish("analysis/*", "Start my new project")

wflow_git_push()

pipeline 
{
 	agent 
 	{
 		docker
 		{
 			image 'openjdk:8'
 		}
 	}
 	stages 
 	{
		stage('Prerequisites')
  		{
  			steps
  			{
          cd pipeline_trial
          sh 'docker-compose up --build'
  			}
  		}
	}
}

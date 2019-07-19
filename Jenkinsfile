pipeline 
{
 	agent any
 	stages 
 	{
		stage('Clone')
    	{
			steps 
      		{
        		sh 'git clone https://github.com/qaiffluke/pipeline_trial'
    		}
  		}
  		stage('Prerequisites')
  		{
  			steps
  			{
  				sh 'docker-compose up --build'
  			}
  		}
	}
}
pipeline 
{
 	agent any
 	stages 
 	{
		stage('Bazel-Trial')
  		{
  			steps
  			{
          cd pipeline_trial
          sh 'docker build - < Dockerfile'
  			}
  		}
	}
}

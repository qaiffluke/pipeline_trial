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
          		sh 'curl https://bazel.build/bazel-release.pub.gpg | apt-key add -'
  				sh 'apt-get update \
  					apt-get install -y bazel \
  					rm -rf /var/lib/apt/lists/*'
  				sh 'apt-get update && \
    				apt-get upgrade -y && \
    				apt-get install -y git'
  			}
  		}
  		stage('Cloning')
  		{
  			steps
  			{
    			sh 'git clone https://github.com/bazelbuild/examples/'
  			}
  		}
	}
}

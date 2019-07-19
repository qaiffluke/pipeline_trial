# Install Bazel
FROM openjdk:8

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list \ 
#&& curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN apt-get update \
  && apt-get install -y bazel \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

# Set up workspace
RUN mkdir -p /usr/src/app
ENV WORKSPACE /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/bazelbuild/examples/

RUN cd examples/java-tutorial && \
	bazel build //:ProjectRunner && \
	bazel-bin/ProjectRunner 

COPY java-tutorial bazel:/java-tutorial
RUN cd examples/java-tutorial && \
	bazel build //:ProjectRunner && \
	bazel-bin/ProjectRunner 
RUN cd examples/java-tutorial && \
	bazel build //src/main/java/com/example/cmdline:runner && \
	./bazel-bin/src/main/java/com/example/cmdline/runner && \
	bazel build //src/main/java/com/example/cmdline:runner_deploy.jar
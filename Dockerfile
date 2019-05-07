FROM runmymind/docker-android-sdk:latest

# Installing build tools
RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev

# Installing fastlane
RUN gem install fastlane

# Installing bundle
RUN gem install bundle

# Install gradle
RUN wget https://services.gradle.org/distributions/gradle-5.4-rc-1-all.zip
RUN mkdir /opt/gradle
RUN mkdir /apk
RUN unzip -d /opt/gradle gradle-5.4-rc-1-all.zip
RUN export PATH=$PATH:/opt/gradle/gradle-3.5.0-alpha13/bin
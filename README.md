[![Gauge
Badge](https://cdn.rawgit.com/getgauge/getgauge.github.io/master/Gauge_Badge.svg)](http://getgauge.io)

## Pre-Requisites
* Java
* Maven
* Ruby
* Rake
* Bundler
* [Node](https://nodejs.org/en/) 
* [Gauge](http://getgauge.io)

## Setup
* ``` git clone``` as a sibling directory to
  [go.cd](https://github.com/gocd/gocd)
* ```$ cd ruby-functional-tests```
* ```$ gauge --install-all```

## Prepare
* cd to ```gocd-plugins``` codebase, run : ```$ mvn clean install -DskipTests```
* cd to ```gocd``` codebase, run : 
* ```$ ./gradlew clean installers:agentGenericZip installers:serverGenericZip```
* ```./gradlew test-addon:assemble```
* cd to ```ruby-functional-tests``` and run : ```$ bundle install --path=vendor/bundle```
 

## Running tests

* ```bundle exec rake```


## License

```plain
Copyright 2016 ThoughtWorks, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

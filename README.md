Install Rails with Docker
=========================

### Install
`$> docker pull rails:4.2.1`  
`$> docker build -t rails_docker .`

### Alias command

$> alias rails_docker='docker run -it -v "$PWD":/usr/src/app rails_docker'  
$> alias rails_docker_bash='docker run -it -p "3000:3000" -v "$PWD":/usr/src/app --entrypoint bash rails_docker'  

### Execution

$> rails_docker new app   
$> cd app && touch run.sh   
$> vim run.sh   

```
#!/bin/bash

bundle install && rails s -b 0.0.0.0
```
$> rails_docker_bash run.sh

### Test

$> curl http://192.168.59.103:3000

### Go into container

$> docker exec -it [CONTAINER ID] bash

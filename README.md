# admin-server

[![Admin server](https://dockeri.co/image/robert2411/admin-server)](https://hub.docker.com/r/robert2411/admin-server)

## Env variable

| Variable                    | Default value         | Options    | Description                                                                           |
| --------------------------- |:----------------------| -----------|---------------------------------------------------------------------------------------|
| EUREKA_CLIENT_ENABLED       | true                  | true/false | Find other applications using eureka                                                  |
| EUREKA_SERVICE_URL          | http://localhost:8761 |            | /euraka is added to the url by default                                                |
| CONFIG_ENABLED              | false                 | true/false | Enable fetching configuration from the config server                                  |
| CONFIG_URL                  | http://localhost:8080 |            | The url of the config server (not needed if CONFIG_DISCOVERY_ENABLED=true)            |
| CONFIG_DISCOVERY_ENABLED    | false                 | true/false | Find the config server using eurkea?                                                  |
| CONFIG_DISCOVERY_SERVICE_ID | config-server         |            | The name under witch the config server is registed in eureka                          |
| CONFIG_FAIL_FAST            | false                 | true/false | Fail application startup if the config server is not found (6 retries before failure) |

## Tags
### latest
 - The last release (master branch on git)
 
### dev
 - The last development release (develop branch on git)

### Version number
 - A specific version (Tag on git)

## Release Notes
### v1.1.0
#### Features
 - Added 2 new config parameters `CONFIG_ENABLED` `CONFIG_URL`

### V1.0.0
#### Features
 - Support for spring config server (fail fast support)
 - Support for eureka
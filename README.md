# Privoxy

Privoxy is a "privacy enhancing proxy", filtering Web pages and removing advertisements.

## Install
- First install `ds` :
     + https://github.com/docker-scripts/ds#installation

  - Then get the privoxy scripts from github: `ds pull privoxy`

  - Create a directory for the privoxy container: `ds init privoxy @priv1`

  - Build image, create the container and configure it:
    ```
    ds build
    ds create
    ds config
    ```

## Run privoxy

(please, __read the security note below__)

    docker run -d privoxy
    
## Test privoxy

      curl --proxy http://localhost:8118/ http://ifconfig.es
      
## Security note

This container should be executed in a local host or in a VPN.

Please, don't execute this docker in a host accesible from the internet with -p parameter because it __bypass the Linux firewall__ and you could be opening an __anonymous internet door__.

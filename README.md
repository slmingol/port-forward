### port-forward
Provides 2 methods for triaging port-forward issues with Openshift. 

#### iperf3
The first uses ipref3. With this you deploy a `iperf3 -s` server as a pod and then use `iperf3 -c <ip> -p <port>` to connect to the pod. There are several scripts included which help facilitate setting up the port-forward & optionally a `socat` tunnel if you'd like to use iperf3 from a docker container rather than setting it up natively.

#### redis
The second uses redis-server, redis-cli, and redis-benchmark. In a similar fashion you deploy redis-server as a pod and then use redis-cli & redis-benchmark to drive traffic to the pod over a port-forward setup. Again this includes an optional `socat` tunnel.

#### References
* https://www.jamescoyle.net/cheat-sheets/581-iperf-cheat-sheet
* https://medium.com/@nnilesh7756/copy-directories-and-files-to-and-from-kubernetes-container-pod-19612fa74660
* https://redis.io/topics/benchmarks
* https://www.cyberciti.biz/faq/linux-unix-tcp-port-forwarding/
* https://github.com/craSH/socat/blob/master/EXAMPLES
* https://docs.docker.com/network/
* https://stackoverflow.com/questions/24319662/from-inside-of-a-docker-container-how-do-i-connect-to-the-localhost-of-the-mach
* https://stackoverflow.com/questions/17770902/forward-host-port-to-docker-container
* https://hub.docker.com/r/clue/redis-benchmark
* https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/

# Frequently asked questions (FAQ)


## `/tmp` too small 

#### Problem

`exaslct` stops with an error because the /tmp directory is full.

#### Solution

Use the `--temporary-base-directory` parameter of `exaslct` to indicate another root directory for temporary files.

## How do I run `exaslct` from within a docker container?

#### Problem

`exaslct` itself uses docker. Because of that it needs access to the docker socket and also input/output-directories must not be hidden inside the build containers by docker's filesystem overlays.

#### Solution

Start the container in which you want to run `exaslct` by [bind-mounting](https://docs.docker.com/engine/reference/commandline/run/#add-bind-mounts-or-volumes-using-the---mount-flag) the docker socket and all input/output-directories you need. 
For example, let's assume you have `script-languages-release` under `/home/user/script-languages-release`, and want to build a standard-container which is shipped with this repository, then you would need to start the container with:
```bash
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v /home/user/script-languages-release:/home/user/script-languages-release ubuntu:18.04 bash
```

Now let's assume you have a custom flavor under `/home/user/custom_flavor` and plan to export the script-languages-container to `/home/user/custom_flavor_container` using `exaslct`, then you also need to bind-mount those directories:
```bash
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v /home/user/script-languages-release:/home/user/script-languages-release -v /home/user/custom_flavor:/home/user/custom_flavor -v /home/user/custom_flavor_container:/home/user/custom_flavor_container ubuntu:18.04 bash
```

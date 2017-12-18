# nb_pyusct

Jupyter notebook pages for [chenaoki/pyusct](https://github.com/chenaoki/pyusct).


## Requirement

* nvidia-docker

## Run

```bash
> docker run -it --rm --runtime=nvidia -v /some/host/folder:/mnt/nas -p xxxx:8888 chenaoki/pyusct-tf:latest

[I 11:21:45.027 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[W 11:21:45.052 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 11:21:45.056 NotebookApp] Serving notebooks from local directory: /notebooks/nb_pyusct
[I 11:21:45.057 NotebookApp] 0 active kernels
[I 11:21:45.057 NotebookApp] The Jupyter Notebook is running at:
[I 11:21:45.057 NotebookApp] http://[all ip addresses on your system]:8888/?token=56f15d9e43bff9ed606beccff92981e784b986f4b92bcbfb
[I 11:21:45.057 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 11:21:45.057 NotebookApp] 
    
        Copy/paste this URL into your browser when you connect for the first time,
            to login with a token:
                    http://localhost:8888/?token=56f15d9e43bff9ed606beccff92981e784b986f4b92bcbfb

```

Copy the token, open the server (port:xxxx) and paste the token to login.

# Running steam inside docker...

... has quite a lot of advantages:

 - Support as good as Ubuntu (since image is based on that).
 - Since steam is proprietary, running it outside of your regular filesystem is
   a huge benefit for security.
 - It's reproducible and any error that occurs can be worked around for
   *everyone* in this simple image.
 - On NixOS, Steam makes a nested filesystem. Using Docker shouldn't have any
   disadvantages.

# Usage

This Dockerfile is not usable at all unless you're using the absolutely great
[x11docker](https://github.com/mviereck/x11docker). It's straight up scary good
at what it does, and is the core how this works. Really, all the credits go to
[@mviereck](https://github.com/mviereck), he's awesome. Too awesome.

All the building and running with recommended x11docker settings are ran by
`run.sh`. So it's recommended to put x11docker in your path and run
```sh
./run.sh
```
.
You can also choose to *not* put x11docker in your path, and instead call
```sh
./run.sh path/to/x11docker
```

# Note

This docker file uses the latest steam installer and may therefore stop working
on it's own. Don't panic, just give me a ping and I'll see what I can do. Or
better yet, send a PR!

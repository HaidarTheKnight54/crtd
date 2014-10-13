# crtd - cool-retro-term dockerized

Why do this?  Because I couldn't get cool-retro-term to compile
on my Mac.

I'm starting to feel like Docker is a hammer, and everything is a
nail...

   # Build crt image
   docker build -t crt .

   docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
     --device=/dev/sda:/dev/sda \
     -e DISPLAY=unix$DISPLAY crt


# Dockerfile PostGIS

## Info
  This Dockerfile creates a container running Tilemill with maxzoom 25

##Usage
  docker run gisce/tilemill
  To run you must expose 20008 and 2009 port using -p 20008:20008 -p 20009:20009
  To use your local projects you cant mount your project direcotry using -v argument
  -v <projects direcotry>:/root/Documents/MapBox/project  

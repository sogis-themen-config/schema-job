# schema-job

```
gradle -b build.gradle -Ptheme=ch.so.afu.abbaustellen -Pschema=afu_abbaustellen_pub tasks --all
```

```
docker run -i --rm --name gretl --entrypoint="/bin/sh" -v $PWD:/home/gradle/project -v $HOME/gretljobs.properties:/home/gradle/.gradle/gradle.properties sogis/gretl:latest -c 'gretl -Ptheme=ch.so.afu.abbaustellen -Pschema=afu_abbaustellen_pub dropSchema'
```

macOS: `dbUriPub=jdbc:postgresql://host.docker.internal:54322/pub`
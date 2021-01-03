
@@ -1,17 +1,28 @@
#!/usr/bin/env bash
set-e
# The name of the archive that contains all project repos
ARCHIVE=defects4j-repos.zip
clean(){
    rm-rf\
    closure-compiler.git\
    commons-cli.git\
    commons-codec.git\
    commons-collections.git\
    commons-compress.git\
    commons-csv.git\
    commons-jxpath.git\
    commons-lang.git\
    commons-math.git\
    gson.git\
    jackson-core.git\
    jackson-databind.git\
    jackson-dataformat-xml\
    jfreechart\
    joda-time.git\
    jsoup.git\
    mockito.git\
    README 
}
@@ -49,6 +60,7 @@ else
fi
# Only download repos if the server has a newer file
download_url "https://defects4j.org/downloads/$ARCHIVE"

new=$($cmd)

# Exit if no newer file is available
["$old"=="$new"]&&exit0
# Remove old files
clean
# Extract new repos
unzip -q -u $ARCHIVE && mv defects4j/project_repos/* . && rm -r defects4j

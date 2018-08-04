

## Configure variables in the *.env* file
- Edit the *.env* file, change version tags, and save the file

## Build the v 1.x Docker image
There are no docker images for ArchivesSpace 1.x on the ArchivesSpace Docker Hub, so we must build one.

 Run: *source ./.env*
  - WARNING: This may change variables you use in your Unix shell, though this is unlikely.
- Create version-specific Dockerfile
  - Run: *cp -p Dockerfile.template "Dockerfile-${ASPACE_TAG}"*
  - Edit the new Docker file to change the GitHub version tag ("v?.?.?". E.g., "v1.5.4")
- Run: *docker build -t "${ASPACE_IMAGE}:${ASPACE_TAG}" -f "Dockerfile-${ASPACE_TAG}" .*
  - example effective command: *docker build -t "local/archivesspace:1.5.4" -f Dockerfile-1.5.4 .*

## Initialize the MySQL service
- Run: *docker-compose up mysql*
  - Monitor the log and use Ctrl-C to stop the service once the initialization is complete.
  - If loading an exisitng database, this process will take longer.

## Start-up the complete ArchivesSpace instance
- Run: *docker-compose up -d*
  - First run with an existing database:
    - If database is from a previous release, any database migrations will run before the system becomes available and indexing begins..
    - The instance will need to rebuild its Solr indexes. This will take some time to complete. The instance will become available
     before the rebuild is complete, but some functions may not work correctly during this time and performance may be noticibly
     impacted. Performance and functionality will return to normal once the index rebuild is completed.

## Monitoring

You can monitor this instance by running *docker-compose logs -f* from this directory.


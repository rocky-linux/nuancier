# Container Readme

1. Build with `podman build -t localhost/nuancier:latest .`
2. Run, mounting static and templates as you see fit:
    `podman run -p 5000:500 --name nuancier-dev -v $PWD/nuancier:/opt/app-root/src/nuancier -d localhost/nuncier:latest`
3. Setup database:
    `podman exec nuancier-dev python createdb.py`
4. Browse to http://localhost:5000

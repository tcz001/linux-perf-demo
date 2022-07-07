# Quick Start

Step 1: Start Backend 

```
git clone git@github.com:tcz001/linux-perf-demo.git
cd linux-perf-demo
docker build -t itune-demo
docker run --privileged -it --rm -p 8080:8080 itune-demo
```

Step 2: Start Frontend 

```
git clone git@github.com:tcz001/vue-window.git
cd vue-window
npm install
npm run example-server
```

Step 3: Use browser to open http://localhost:8090/?Demo


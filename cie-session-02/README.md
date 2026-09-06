## Requirements
```bash
brew install watch
```

## Observe the active address:port
```bash
watch "lsof -i -P | grep <SERVICE_NAME>"
```

## Run counting-service_darwin_arm64
```bash
PORT=8000 ./counting-service_darwin_arm64
```

## Run dashboard-service_darwin_arm64  
```bash
PORT=8001 \
COUNTING_SERVICE_URL=[url_of_counting_service] \
./dashboard-service_darwin_arm64
```

## Questions
<b>What's the difference between running 0.0.0.0 and 127.0.0.1?</b>
</br>
Answer: Running 0.0.0.0 makes the app accessible on both network interface and local loop (127.0.0.1). If only run on 127.0.0.1, it won't be accessible using local IP.

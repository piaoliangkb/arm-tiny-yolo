# arm-tiny-yolo
A microservice for Raspberry PI running a Tiny Yolo v3 neural network to detect object in pictures 

Pull pre-built image:
```bash
docker pull piaoliangkb/x86-tiny-yolo
docker tag piaoliangkb/x86-tiny-yolo x86-tiny-yolo
```

Build Docker image for x86-64 machine from source:
```bash
docker build docker build -t x86-tiny-yolo:latest .
```

To start the container with default config :
```bash
docker run -d --name x86-tiny-yolo -p 5000:5000 x86-tiny-yolo
```

Alternatively you can specify a conf diretory so you can change model weights easily :
```bash
docker run -d --name x86-tiny-yolo -v <conf_dir>:/conf -p 5000:5000 x86-tiny-yolo
```

To test an image with the Yolo WebService : 
```bash
curl -X PUT -F image_file=@./soccer.jpeg http://localhost:5000/process
```

#### Result is something like :
```bash
 Class: person with confidence: 0.6138224005699158
 Class: person with confidence: 0.4564242362976074
 Class: person with confidence: 0.7284687161445618
 Class: sports ball with confidence: 0.46966585516929626
 Class: sports ball with confidence: 0.6894618272781372
```
 
Based on Alpine Linux 3.8, Python 3.6 and OpenCV 3.4.4.

#### Tributes
1. https://github.com/arunponnusamy/object-detection-opencv
2. https://hub.docker.com/r/julianbei/alpine-opencv-microimage/


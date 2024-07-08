from ultralytics import YOLO

model = YOLO('yolov8m.pt')  # load a pretrained model (recommended for training)

model.train(data='config.yaml', epochs=30, imgsz=640, mosaic=0.0, degrees=0.25)
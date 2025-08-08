anomaly-detection/
├── backend/
│   ├── app/
│   │   ├── __init__.py
│   │   ├── config.py
│   │   ├── main.py
│   │   ├── models.py
│   │   ├── routes.py
│   │   ├── schemas.py
│   │   ├── services/
│   │   │   ├── __init__.py
│   │   │   ├── anomaly_detection.py
│   │   │   ├── alert_service.py
│   │   ├── utils/
│   │       ├── __init__.py
│   │       ├── db.py
│   │       ├── kafka_consumer.py
│   │       ├── logging.py
├── frontend/
│   ├── public/
│   │   ├── index.html
│   ├── src/
│   │   ├── App.tsx
│   │   ├── index.tsx
│   │   ├── components/
│   │   ├── pages/
│   │   └── services/
├── tests/
│   ├── test_anomaly_detection.py
│   ├── test_routes.py
├── docker-compose.yml
├── Dockerfile
├── README.md
├── requirements.txt
└── setup.py
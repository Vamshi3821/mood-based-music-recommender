from flask import Flask, request, jsonify, render_template
import cv2
import numpy as np
import base64
import mysql.connector
import random
from tensorflow.keras.models import load_model

app = Flask(__name__)

# =========================
# LOAD TRAINED MODEL
# =========================
MODEL_PATH = "emotion_model_v2/saved_model/emotion_model.h5"
model = load_model(MODEL_PATH)

emotion_labels = ['angry', 'calm', 'happy', 'neutral', 'sad']

# Haar Cascade for face detection
face_cascade = cv2.CascadeClassifier(
    cv2.data.haarcascades + "haarcascade_frontalface_default.xml"
)

# =========================
# MySQL connection
# =========================
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vamshi@123",
    database="songs"
)
cursor = conn.cursor()

# =========================
# Home route
# =========================
@app.route('/')
def index():
    return render_template('index.html')

# =========================
# Detect emotion API
# =========================
@app.route('/detect_emotion', methods=['POST'])
def detect_emotion():
    try:
        data = request.json
        img_data = data['image']

        # Base64 → OpenCV image
        img_str = img_data.split(',')[1]
        img_bytes = base64.b64decode(img_str)
        nparr = np.frombuffer(img_bytes, np.uint8)
        img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        faces = face_cascade.detectMultiScale(gray, 1.3, 5)

        detected_emotion = "neutral"

        if len(faces) > 0:
            (x, y, w, h) = faces[0]
            face = img[y:y+h, x:x+w]

            face = cv2.resize(face, (224, 224))
            face = face / 255.0
            face = np.reshape(face, (1, 224, 224, 3))

            pred = model.predict(face, verbose=0)
            emotion_index = np.argmax(pred)
            detected_emotion = emotion_labels[emotion_index]

        print("Model detected emotion:", detected_emotion)

        # =========================
        # Fetch songs from MySQL
        # =========================
        cursor.execute(
            "SELECT title, spotify_link, youtube_link FROM songs WHERE mood=%s",
            (detected_emotion,)
        )

        songs = cursor.fetchall()
        songs_list = random.sample(songs, min(5, len(songs)))

        response = []
        for song in songs_list:
            response.append({
                'title': song[0],
                'spotify_link': song[1],
                'youtube_link': song[2]
            })

        return jsonify({
            'mood': detected_emotion,
            'songs': response
        })

    except Exception as e:
        print("Error:", e)
        return jsonify({'mood': 'neutral', 'songs': []})

# =========================
# Run Flask app
# =========================
if __name__ == '__main__':
    app.run(debug=True)

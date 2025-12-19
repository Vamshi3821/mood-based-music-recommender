from flask import Flask, request, jsonify, render_template
from deepface import DeepFace
import cv2
import numpy as np
import base64
import mysql.connector
import random

app = Flask(__name__)


conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Vamshi@123",  
    database="songs",
)
cursor = conn.cursor()

# -------------------------
# Home route
# -------------------------
@app.route('/')
def index():
    return render_template('index.html')


# Detect emotion 

@app.route('/detect_emotion', methods=['POST'])
def detect_emotion():
    try:
        data = request.json
        img_data = data['image']
        print("Received image from frontend")

        # Convert base64 to OpenCV image
        img_str = img_data.split(',')[1]
        img_bytes = base64.b64decode(img_str)
        nparr = np.frombuffer(img_bytes, np.uint8)
        img = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

        # Detect emotion
        result = DeepFace.analyze(img, actions=['emotion'], enforce_detection=False)

        # Handle list or dict
        if isinstance(result, list):
            detected_emotion = result[0].get('dominant_emotion', 'neutral')
        else:
            detected_emotion = result.get('dominant_emotion', 'neutral')

        print("DeepFace detected emotion:", detected_emotion)

        # Map detected emotion to database moods
        mood_map = {
            'happy': 'happy',
            'sad': 'sad',
            'angry': 'angry',
            'neutral': 'neutral',
            'fear': 'calm',
            'surprise': 'happy',
            'disgust': 'angry'
        }
        mood_db = mood_map.get(detected_emotion.lower(), 'neutral')
        print("Mapped mood for DB:", mood_db)

        # Fetch songs from MySQL
        cursor.execute("SELECT title, spotify_link, youtube_link FROM songs WHERE mood=%s", (mood_db,))
        songs = cursor.fetchall()
        songs_list = random.sample(songs, min(5, len(songs)))

        # Prepare JSON response
        response = []
        for song in songs_list:
            response.append({
                'title': song[0],
                'spotify_link': song[1],
                'youtube_link': song[2]
            })

        print("Returning songs:", response)
        return jsonify({'mood': mood_db, 'songs': response})

    except Exception as e:
        print("Error:", e)
        # Always return a default response to avoid undefined in frontend
        return jsonify({'mood': 'neutral', 'songs': []})


# -------------------------
# Run Flask app
# -------------------------
if __name__ == '__main__':
    app.run(debug=True)

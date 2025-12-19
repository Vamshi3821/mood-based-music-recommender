## Features
- Real-time face emotion detection using webcam.
- Detects emotions like Happy, Sad, Angry, Neutral.
- Recommends songs based on detected emotion.
- Integration with Spotify and YouTube links.
- User-friendly interface.

## Technologies Used
- Python
- OpenCV
- TensorFlow / Keras
- MediaPipe
- Streamlit / Flask
- MySQL
- HTML, CSS, Bootstrap
- Spotify & YouTube APIs

## Workflow
1. User opens the application
2. Webcam captures face image
3. Face is detected using OpenCV / MediaPipe
4. Emotion is classified using trained ML model
5. Songs related to the emotion are fetched from database
6. Spotify and YouTube links are displayed to the user

## Dataset
- FER-2013 (Facial Expression Recognition Dataset)
- Images are labeled with emotions such as happy, sad, angry, neutral

##Create virtual environment
python -m venv env
source env/bin/activate   # Mac/Linux
env\Scripts\activate      # Windows

##Install dependencies
pip install -r requirements.txt


## License
This project is licensed under the MIT License.


## Author
- Vamshi Reddy
- Thank you

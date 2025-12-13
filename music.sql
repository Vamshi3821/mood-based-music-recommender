create database songs;

use songs;
CREATE TABLE songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mood VARCHAR(20),
    title VARCHAR(255),
    spotify_link VARCHAR(500),
    youtube_link VARCHAR(500)
);
-- Happy Songs
INSERT INTO songs (mood, title, spotify_link, youtube_link) VALUES
('happy','Happy - Pharrell Williams','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=y6Sxv-sUYtM'),
('happy','Can’t Stop the Feeling - Justin Timberlake','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=ru0K8uYEZWw'),
('happy','Good Vibrations - The Beach Boys','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=Eab_beh07HU'),
('happy','I Gotta Feeling - Black Eyed Peas','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=uSD4vsh1zDA'),
('happy','Best Day Of My Life - American Authors','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=Y66j_BUCBMY'),
('happy','Walking on Sunshine - Katrina & The Waves','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=iPUmE-tne5U'),
('happy','Shake It Off - Taylor Swift','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=nfWlot6h_JM'),
('happy','Uptown Funk - Mark Ronson ft. Bruno Mars','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=OPf0YbXqDm0'),
('happy','Don’t Worry Be Happy - Bobby McFerrin','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=d-diB65scQU'),
('happy','Lovely Day - Bill Withers','https://open.spotify.com/track/6JV2JOEocMgcZxYSZelKcc','https://www.youtube.com/watch?v=sYi7uEvEEmk');

-- Sad Songs
INSERT INTO songs (mood, title, spotify_link, youtube_link) VALUES
('sad','Someone Like You - Adele','https://open.spotify.com/track/4kflIGfjdZJW4ot2ioixTB','https://www.youtube.com/watch?v=hLQl3WQQoQ0'),
('sad','Fix You - Coldplay','https://open.spotify.com/track/7h3nZ9b9d5XDKd4F1A4PO6','https://www.youtube.com/watch?v=k4V3Mo61fJM'),
('sad','Stay With Me - Sam Smith','https://open.spotify.com/track/0ofbQMrRDsUaVKq2mGLEAb','https://www.youtube.com/watch?v=pB-5XG-DbAA'),
('sad','The Night We Met - Lord Huron','https://open.spotify.com/track/1rgnBhdG2JDFTbYkYRZAku','https://www.youtube.com/watch?v=KtlgYxa6BMU'),
('sad','Let Her Go - Passenger','https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf','https://www.youtube.com/watch?v=RBumgq5yVrA'),
('sad','Hallelujah - Jeff Buckley','https://open.spotify.com/track/5ChkMS8OtdzJeqyybCc9R5','https://www.youtube.com/watch?v=y8AWFf7EAc4'),
('sad','Everybody Hurts - R.E.M.','https://open.spotify.com/track/5vWb3Jqj8iqCk6ODw0bHfQ','https://www.youtube.com/watch?v=ijZRCIrTgQc'),
('sad','Tears in Heaven - Eric Clapton','https://open.spotify.com/track/3wH9yDx5s2i4G6vzyG8b1H','https://www.youtube.com/watch?v=JxPj3GAYYZ0'),
('sad','Creep - Radiohead','https://open.spotify.com/track/3HVWdVOQ0ZA45FuZGSfvNS','https://www.youtube.com/watch?v=XFkzRNyygfk'),
('sad','Back to December - Taylor Swift','https://open.spotify.com/track/4Ck8sT1pqf1Gz4G58uG02g','https://www.youtube.com/watch?v=QUwxKWT6m7U');

-- Calm Songs
INSERT INTO songs (mood, title, spotify_link, youtube_link) VALUES
('calm','Weightless - Marconi Union','https://open.spotify.com/track/3LZc4wHJqfV8J1m3rXfo2P','https://www.youtube.com/watch?v=UfcAVejslrU'),
('calm','Clair de Lune - Debussy','https://open.spotify.com/track/6MB2f0uI8R3zXJzC7a2NmV','https://www.youtube.com/watch?v=CvFH_6DNRCY'),
('calm','Watermark - Enya','https://open.spotify.com/track/1rCcsT1BA5GybYvYQThs8J','https://www.youtube.com/watch?v=otqjJ05_fos'),
('calm','Spiegel im Spiegel - Arvo Pärt','https://open.spotify.com/track/5U5HtQ2o3b6k4EmOSRHxJc','https://www.youtube.com/watch?v=TJ6Mzvh3XC8'),
('calm','Sunset Lover - Petit Biscuit','https://open.spotify.com/track/3L1lZJPSqMhe3MNGaFAo5J','https://www.youtube.com/watch?v=9Q5z0xJAmV0'),
('calm','River Flows in You - Yiruma','https://open.spotify.com/track/3v2ZbQY3cLOuY2I6oTj0oG','https://www.youtube.com/watch?v=7maJOI3QMu0'),
('calm','Experience - Ludovico Einaudi','https://open.spotify.com/track/0s0bQnHxSPXMQkyy4Wq9w8','https://www.youtube.com/watch?v=91sJ8jX9cX0'),
('calm','Night Owl - Galimatias','https://open.spotify.com/track/4m2cWlhzF5oZqzZQJrs9Xr','https://www.youtube.com/watch?v=j9S3xR4JU4I'),
('calm','Comptine d’un autre été - Yann Tiersen','https://open.spotify.com/track/1fJ2tZt0uOgzJgkW49x9Ow','https://www.youtube.com/watch?v=H2-1u8xvk54'),
('calm','Porcelain - Moby','https://open.spotify.com/track/2mC3FttPTZJe9qlTh71oiY','https://www.youtube.com/watch?v=Uv9G7p2XAzI');

-- Angry Songs
INSERT INTO songs (mood, title, spotify_link, youtube_link) VALUES
('angry','Break Stuff - Limp Bizkit','https://open.spotify.com/track/7y3af2eKQjR3ZQ6U5Njrdo','https://www.youtube.com/watch?v=ZpUYjpKg9KY'),
('angry','Killing In The Name - Rage Against the Machine','https://open.spotify.com/track/0tkZnW4sI8Qp0i8aY6IH8R','https://www.youtube.com/watch?v=bWXazVhlyxQ'),
('angry','Bodies - Drowning Pool','https://open.spotify.com/track/1swxJRC8QHeZ7M1hJz9Oss','https://www.youtube.com/watch?v=5Jzz5Bl8d7Q'),
('angry','Du Hast - Rammstein','https://open.spotify.com/track/2w8Z1M7jipj36qu6H3tK5R','https://www.youtube.com/watch?v=W3q8Od5qJio'),
('angry','Smells Like Teen Spirit - Nirvana','https://open.spotify.com/track/0Svkvt5I79wficMFgaqEQJ','https://www.youtube.com/watch?v=hTWKbfoikeg'),
('angry','Headstrong - Trapt','https://open.spotify.com/track/2F7uKZ2a4Zo7h9J9XqlJKv','https://www.youtube.com/watch?v=8G0gE96FOTk'),
('angry','I Hate Everything About You - Three Days Grace','https://open.spotify.com/track/7tKLEsZZ6sV9tXsvF9L41l','https://www.youtube.com/watch?v=6G4BsoO9Gxs'),
('angry','Given Up - Linkin Park','https://open.spotify.com/track/0Vx2m1gJdST5G7K6V2kCbg','https://www.youtube.com/watch?v=9X8wq7ipz64'),
('angry','Take the Power Back - Rage Against the Machine','https://open.spotify.com/track/1FjTL9n0NfE0CvqY5qj3wI','https://www.youtube.com/watch?v=7LrNxZsBGEQ'),
('angry','Prayer - Disturbed','https://open.spotify.com/track/3TGRNldVxZWWU4b53PPOo3','https://www.youtube.com/watch?v=clZiqRO2T7k');

-- Neutral Songs
INSERT INTO songs (mood, title, spotify_link, youtube_link) VALUES
('neutral','Shape of You - Ed Sheeran','https://open.spotify.com/track/7qiZfU4dY1lWllzX7mPBI3','https://www.youtube.com/watch?v=JGwWNGJdvx8'),
('neutral','Let Me Love You - Justin Bieber','https://open.spotify.com/track/1zB4vmk8tFRmM9UULNzbLB','https://www.youtube.com/watch?v=0rWqgXk7Qcc'),
('neutral','Blinding Lights - The Weeknd','https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b','https://www.youtube.com/watch?v=4NRXx6U8ABQ'),
('neutral','Someone You Loved - Lewis Capaldi','https://open.spotify.com/track/7qEHsqek33rTcFNT9PFqLf','https://www.youtube.com/watch?v=zABLecsR5UE'),
('neutral','Senorita - Shawn Mendes & Camila Cabello','https://open.spotify.com/track/0TK2YIli7K1leLovkQiNiF','https://www.youtube.com/watch?v=Pkh8UtuejGw'),
('neutral','Memories - Maroon 5','https://open.spotify.com/track/1k8GRV3s1Yz2rxbEC7e5XB','https://www.youtube.com/watch?v=SlPhMPnQ58k'),
('neutral','Perfect - Ed Sheeran','https://open.spotify.com/track/0tgVpDi06FyKpA1z0VMD4v','https://www.youtube.com/watch?v=2Vv-BfVoq4g'),
('neutral','Photograph - Ed Sheeran','https://open.spotify.com/track/3cH5XvP2tCldLae05gH5Fi','https://www.youtube.com/watch?v=nSDgHBxUbVQ'),
('neutral','Stay - Rihanna ft. Mikky Ekko','https://open.spotify.com/track/0U46x98x1Gk6q6HuByFZ5t','https://www.youtube.com/watch?v=pB-5XG-DbAA'),
('neutral','Wake Me Up - Avicii','https://open.spotify.com/track/0yW7w8F2TVV4Jv6K0RlhAS','https://www.youtube.com/watch?v=IcrbM1l_BoI');


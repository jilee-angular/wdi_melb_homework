DROP TABLE videos;

CREATE TABLE videos (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(40),
  description VARCHAR(200),
  video_url VARCHAR(100),
  genre VARCHAR(20)
);

insert into videos (title,description,video_url,genre) values ('surf up','The Beast, Ex-Hurricane Ida, flooded the mid-Atlantic states and sent swells crashing into South Florida. Surfers hit the water in Delray Beach.','https://www.youtube.com/watch?v=ReMKmrxq9RI','sports');


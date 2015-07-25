# its-raining-various-things

Will take a text file or a phrase and give you an mp3 of it raining that thing.

with a file named mobydick.txt:
```
docker run -i narf/its-raining-various-things < mobydick.txt > mobydick.mp3
```

with a phrase:
```
echo "horse meat" | docker run -i narf/its-raining-various-things > horsemeat.mp3
```

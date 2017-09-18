# its-raining-various-things

couple of themes now:

* raining
* iverson

Will take a text file or a phrase and give you an mp3 of it raining that thing.

with a file named mobydick.txt:
```
docker run -i narf/its-raining-various-things -- raining < mobydick.txt > mobydick.mp3
```

[with a phrase](https://s3.amazonaws.com/nat.vistarmedia.com/audio/horsemeat.mp3):
```
echo "horse meat" | docker run -i narf/its-raining-various-things -- raining > horsemeat.mp3
```

OR

```
echo "practice" | docker run -i narf/its-raining-various-things -- iverson > horsemeat.mp3
```

// Base class Media
class Media {
  void play() {
    print('Playing media...');
  }
}

// Derived class Song

class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print('Playing song by $artist...');
  }
}

void main() {
  // Creating an instance of Media
  Media media = Media();
  media.play();

  // Creating an instance of Song
  Song song = Song('Kisor Kumar');
  song.play();
}

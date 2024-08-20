// for each song
class Song {
  String title;

  Song(this.title);

  //Initialize Song Title
  String toString() => title;
}

// For playlist of songs
class MyPlaylist {
  String name;
  List<Song> songs = [];

  MyPlaylist(this.name);

// Method to add a song to the playlist
  void addSong(Song song) {
    songs.add(song);
  }

  void listSongs() {
    print('Playlist for "$name":');
    for (var song in songs) {
      print('  $song');
    }
  }
}

// For a music festival with multiple playlists
class MusicFestival {
  String name;
  List<MyPlaylist> playlists = [];

  MusicFestival(this.name);

  void addPlaylist(MyPlaylist playlist) {
    playlists.add(playlist);
  }

  void listPlaylists() {
    print('Playlists in "$name":');
    for (var playlist in playlists) {
      print('  ${playlist.name}');
    }
  }

  // Method to list all playlists in the Music festival
  void listAllSongs() {
    for (var playlist in playlists) {
      playlist.listSongs();
    }
  }
}

void main() {
  print('Welcome to the Music Festival Playlist Manager!\n');

  // Create songs
  var song1 = Song('1. Sunflower - Post Malone');
  var song2 = Song('2. HummingBird - Metro Booming');
  var song3 = Song('3. Calling Metro Boomin');
  var song4 = Song('4. Whats Up Danger - Blackway');
  var song5 = Song('5. Miracles - Zatrix\n');

  var song6 = Song('1. Clair De Lune');
  var song7 = Song('2. One Summer Day - Joe Hisashi');
  var song8 = Song('3. Marry go round of life - Joe Hisashi ');
  var song9 = Song('4. Lullaby Under The Stars');
  var song10 = Song('5. Love Birds -Niklas Blumenthaler\n');

  var song11 = Song('1. Loose - Daniel Ceasar');
  var song12 = Song('2. Best Time - Brient Faiyaz');
  var song13 = Song('3. Best Interest - Tyler, The Creator');
  var song14 = Song('4. Pink+White - Frank Ocean');
  var song15 = Song('5. Overdrive - Post Malone');

  // Create playlists
  var playlist1 = MyPlaylist('Spider-Verse');
  playlist1.addSong(song1);
  playlist1.addSong(song2);
  playlist1.addSong(song3);
  playlist1.addSong(song4);
  playlist1.addSong(song5);

  var playlist2 = MyPlaylist('Classic music');
  playlist2.addSong(song6);
  playlist2.addSong(song7);
  playlist2.addSong(song8);
  playlist2.addSong(song9);
  playlist2.addSong(song10);

  var playlist3 = MyPlaylist('Chill Music');
  playlist3.addSong(song11);
  playlist3.addSong(song12);
  playlist3.addSong(song13);
  playlist3.addSong(song14);
  playlist3.addSong(song15);

  //  playlists to music festival

  var festival = MusicFestival('Music Festival');
  festival.addPlaylist(playlist1);
  festival.addPlaylist(playlist2);
  festival.addPlaylist(playlist3);

  // List playlists
  festival.listPlaylists();
  // List all songs
  festival.listAllSongs();
  print('');
}

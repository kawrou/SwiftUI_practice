import UIKit

struct Book{
    var title: String
    var author: String
    var publicationYear: Int
    
    func summary() -> String {
        return "\(title) by \(author), published in \(publicationYear)."
    }
}

var book = Book(title: "Swift Fundamentals", author: "Josué", publicationYear: 2024)

print(book.summary())
// Expected output: "Swift Fundamentals by Josué, published in 2024."


struct MusicAlbum{
    var albumTitle: String
    
    struct Song{
    let title: String
    let duration: Double
    }
    
    var songs: [Song] = []
    
    mutating func addSong(_ songTitle: String, _ songDuration: Double) {
        let addSong = Song(title: songTitle, duration: songDuration)
        songs.append(addSong)
    }
    
    func totalDuration() -> String {
        var total: Double = 0
        for song in songs{
            print(song.duration)
            total += song.duration
        }
        return "Total Duration: \(String(format: "%.2f", total)) minutes"
    }
}

var album = MusicAlbum(albumTitle: "Swift Tunes")

album.addSong("Variable Blues", 3.15)
album.addSong("Constant Heart", 4.07)

print(album.songs)
print(album.totalDuration())

BandMember.destroy_all
Band.destroy_all
Album.destroy_all
Song.destroy_all
Instrument.destroy_all
MemberInstrument.destroy_all

# Bands
charly_bliss = Band.find_or_create_by(name: 'Charly Bliss')

# Band Members
eva = BandMember.create(name: 'Eva Hendricks', band_id: charly_bliss.id, img_link: "https://pbs.twimg.com/media/EAcExCNXkAA_gys?format=jpg&name=large")
dan = BandMember.create(name: "Dan Shure", band_id: charly_bliss.id, img_link: "https://pbs.twimg.com/media/EAcExCaXoAUyxFo?format=jpg&name=large")
sam = BandMember.create(name: "Sam Hendricks", band_id: charly_bliss.id, img_link: "https://pbs.twimg.com/media/EAcExCZXUAIWLoZ?format=jpg&name=large")
spencer = BandMember.create(name: "Spencer Fox", band_id: charly_bliss.id, img_link: "https://pbs.twimg.com/media/EAcExCHX4AQe157?format=jpg&name=large")

# Albums
young = Album.create(name: "Young Enough", band_id: charly_bliss.id, img_link: "https://images.genius.com/0e50d60e3ab80ff5ea80e3f879162e01.1000x1000x1.jpg")
guppy = Album.create(name: "Guppy", band_id: charly_bliss.id, img_link: "https://f4.bcbits.com/img/a3208327090_10.jpg")

# Songs

guppy_songs = ["Percolator", "Westermarck", "Glitter", "Black Hole", "Scare U", "Ruby", "Gatorade", "Totalizer", "Julia"]
young_songs = ["Blown to Bits", "Capacity", "Under You", "Camera", "Fighting in the Dark", "Young Enough", "Bleach", "Chatroom", "Hurt Me", "Hard to Believe", "The Truth"]

guppy_songs.each do |song|
    Song.create(name: song, album_id: guppy.id)
end

young_songs.each do |song|
    Song.create(name: song, album_id: young.id)
end

# Instruments
vocals = Instrument.create(name: "Vocals")
guitar = Instrument.create(name: "Guitar")
synth = Instrument.create(name: "Synth")
drums = Instrument.create(name: "Drums")
keyboard = Instrument.create(name: "Keyboard")
bass = Instrument.create(name: "Bass")
backup = Instrument.create(name: "Backup Vocals")
lead_guitar = Instrument.create(name: "Lead Guitar")

# Member Instruments
    # Eva
MemberInstrument.create(band_member_id: eva.id, instrument_id: vocals.id)
MemberInstrument.create(band_member_id: eva.id, instrument_id: guitar.id)
MemberInstrument.create(band_member_id: eva.id, instrument_id: synth.id)
    # Dan
MemberInstrument.create(band_member_id: dan.id, instrument_id: bass.id)
MemberInstrument.create(band_member_id: dan.id, instrument_id: backup.id)
MemberInstrument.create(band_member_id: dan.id, instrument_id: synth.id)
    # Sam
MemberInstrument.create(band_member_id: sam.id, instrument_id: drums.id)
MemberInstrument.create(band_member_id: sam.id, instrument_id: backup.id)
    # Spencer
MemberInstrument.create(band_member_id: spencer.id, instrument_id: lead_guitar.id)
MemberInstrument.create(band_member_id: spencer.id, instrument_id: backup.id)
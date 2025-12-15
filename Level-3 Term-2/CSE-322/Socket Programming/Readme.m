# Socket File-Sharing & Messaging (CSE-322) — Summary

Simple Java client-server assignment that supports:
- User registration / presence
- Direct and broadcast messaging
- Chunked file upload with server-side assembly
- Per-user directories and upload log (`users/<username>/upload.log`)

Quick run
- Compile: javac -d out $(find . -name "*.java")
- Server: java -cp out server.Server
- Client: java -cp out client.Client
- Default port: 6666

Client menu (short)
- VIEW_CLIENTS, SEND_MESSAGE, VIEW_MESSAGES, VIEW_FILES, UPLOAD_FILE, VIEW_OTHERS_FILES, EXIT

File upload flow (short)
- Client sends FileMeta → server returns fileId + chunkSize (or rejects)
- Client sends FileChunk objects (byte[] + bytesRead) per chunk, then "COMPLETE"
- Server assembles chunks into users/<user>/(public|private)/<filename> and appends an entry to upload.log

Log format example
- Log created: <date>
- File uploaded: <filename> (<bytes>) on <date>

Notes
- Uses ObjectInput/Output streams; matching classes must be serializable.
- No encryption or authentication beyond unique usernames. Adjust MAX_BUFFER_SIZE / chunk sizes as needed.

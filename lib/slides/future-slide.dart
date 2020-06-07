import 'package:flutter/material.dart';
import 'package:hello_world/slides/slides-presets/slide-two-sides.dart';

class FutureSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlideTwoSides(title: 'Future', paragraphs: [
      '<b>Future Builder</b>: Widget that builds itself based on the latest snapshot of interaction with a Future.',
    ], code: """
     Future<Room> getRoomById(String roomId, String token) async {
      final res = await http.get('\$url/\$roomId', headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: token
      });

      switch(res.statusCode) {
        case HttpStatus.ok: return Room.fromJson(json.decode(res.body));
        case HttpStatus.notFound: throw NotFoundException();
        default: throw UnknownResponseException();
      }
    }

    // Inside a wigdet
    FutureBuilder<Room>(
      future: getRoomById(roomId, token),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.name);
        } else if (snapshot.hasError) {
          return Text("\${snapshot.error}");
        }

        return CircularProgressIndicator();
      })
    """);
  }
}
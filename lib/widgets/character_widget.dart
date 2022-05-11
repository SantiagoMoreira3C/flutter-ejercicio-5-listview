import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 0: Usa widgets básicos que ya conoces para crear este widget/cell.
    // Algunos consejos útiles:
    // * No elimine el widget Container(), agregue todos sus widgets dentro. Recuerde que el widget Container
    //   tiene un solo hijo, pero su primer paso probablemente debería ser agregar un widget Row como ese hijo.
    // * Cargue imágenes con Image.asset (character.image, ...
    // * En el widget Container, siéntase libre de usar decoration:
    //   BoxDecoration (color: Colors.black12, borderRadius: BorderRadius.all (Radius.circular (20.0)))
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(197, 130, 92, 195),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),

      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              character.image,
              height: 145.0,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    character.name,
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 239, 248, 240),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: character.stars < 4.0
                            ? Color.fromARGB(255, 72, 182, 229)
                            : Color.fromARGB(255, 95, 207, 106),
                        shape: BoxShape.rectangle,
                      ),
                      child: Text(
                        character.stars.toString(),
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 2, 0, 2)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8.0),
                      child: Text(
                        character.jobTitle,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

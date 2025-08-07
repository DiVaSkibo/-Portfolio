import 'package:_portfolio/__tools.dart';
import 'package:_portfolio/_project_card.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTool.mainShade,
      appBar: AppBar(
        backgroundColor: ColorsTool.main,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, '/person'),
          icon: Icon(Icons.accessibility, size: 36, color: ColorsTool.accent),
        ),
        title: Row(
          spacing: 27,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/skills'),
              child: Text('Skills'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/experience'),
              child: Text('Experience'),
            ),
            TextButton(onPressed: () => {}, child: Text('Projects')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.all(36),
            child: Column(
              spacing: 36,
              children: [
                ProjectCard(
                  title: 'Quasar.is Co.',
                  body:
                      'The game is a simulator of interaction with two types of documents.\nThe first type of document is a “report” that is generated independently based on resource data. It contains all the information about space objects. When the report is loaded on the stage, its information is mixed and the user will have to sort it by logic.\nThe second type of document is an “article” that is created directly with the with the help of the user. The information is filled in based on the corresponding report.\nIn addition, the documents have encryption data that can help to sort the text of the reports.\nWhen you receive the report and fill out the article, you will be able to check the correctness of the task. In case of incorrectness, the user should correct the errors and repeat the check. If everything meets the needs the created documents are saved in the cabinet and a new report is generated.\nTo interact with previously created documents, the user can control the character and interact with the office environment, namely the workplace, cabinets, and other workplace, cabinets, and other objects.',
                  image: 'assets/image/project/Preview_QuasarisCo.jpg',
                  screenshots: [
                    'assets/image/project/Screenshot_QuasarisCo_0.jpg',
                    'assets/image/project/Screenshot_QuasarisCo_1.jpg',
                    'assets/image/project/Screenshot_QuasarisCo_2.jpg',
                    'assets/image/project/Screenshot_QuasarisCo_3.jpg',
                  ],
                  links:
                      'itch.io: https://em-o-ja.itch.io/quasaris-co\nGitHub: https://github.com/DiVaSkibo/Course-work.git',
                ),
                ProjectCard(
                  title: 'Domino Circo vel Circo Domino',
                  body:
                      'The main character, named Domino, decides to visit the city circus, despite the fact that he hates it.\nThe circus actor asks someone from the audience to become his assistant. Of course, he chooses our Domino.\nDomino has no desire to help him, so he tries to ruin the show and piss off the actor.\nThrough some actions with Undertale mechanics, he achieves his goal. The actor starts asking why he did it. Domino responds with a very serious argument that touches the entire audience, and they start to drive the actor away.\nAfter that, Domino comes to other performances, where he also spoils the numbers, but using disinformation, which has a very strong impact on the audience.\nEach time, the audience becomes more and more submissive to him.\nUsing this, he forces everyone to burn down the circus.\nBut after this is actually realized, he begins to think about what he has done and who he has become...\nIn the end, we see what the Domino circus looks like. It\'s all in flames, with almost nothing left.\nOr circus domino that hit one object and fell completely...',
                  image:
                      'assets/image/project/Preview_DominoCircovelCircoDomino.jpg',
                  screenshots: [
                    'assets/image/project/Screenshot_DominoCircovelCircoDomino_0.jpg',
                    'assets/image/project/Screenshot_DominoCircovelCircoDomino_1.jpg',
                    'assets/image/project/Screenshot_DominoCircovelCircoDomino_2.jpg',
                    'assets/image/project/Screenshot_DominoCircovelCircoDomino_3.jpg',
                    'assets/image/project/Screenshot_DominoCircovelCircoDomino_4.jpg',
                  ],
                  links:
                      'GGJ: https://globalgamejam.org/games/2025/circus-lies-and-shadows-6\nitch.io: https://em-o-ja.itch.io/domino-circo-vel-circo-domino\nGitHub: https://github.com/DiVaSkibo/Disinfo-bubble.git',
                ),
                ProjectCard(
                  title: 'Exit Exist?',
                  body:
                      'The Chastiser, trapped in hell, is trying to escape.\nHe is helped by Kitsune, who has fallen into the demonic world.\nTo escape, he must pass through the gates of hell, guarded by Cerberus. He can\'t be kill, but you can stun him for a while and then run to the gate. Cerberus\' attack can be deactivated or weakened with the help of hell jokes.\nSince the hero is not in the infernal realm, he will have to scout the area to accumulate jokes.\nThe hero will accumulate jokes in his head from the inhabitants of hell. Each resident has its own activities and prozbi, which will help to understand the essence of life in hell, thereby creating jokes.\nHaving collected a certain number of jokes, it is better, before it is too late, to tell Cerberus, because at the death of the hero, he scores them and will have to pass all the activity to reprohad. But at the same time you should not often visit Cerberus, because he will smell that you plan something and will eat you.\nIn some paths you can be detained by passersby and kill or on the contrary help you pass through an unreachable area.\nHaving escaped to the gate, in the purgatory the hero learns that it is impossible to return to the real world, after which the hero just stays sitting on a bench in the purgatory.',
                  image: 'assets/image/project/Preview_ExitExist.jpg',
                  screenshots: [
                    'assets/image/project/Screenshot_ExitExist_0.jpg',
                    'assets/image/project/Screenshot_ExitExist_1.jpg',
                    'assets/image/project/Screenshot_ExitExist_2.jpg',
                  ],
                  links: 'https://globalgamejam.org/games/2024/exit-exist-0',
                ),
                ProjectCard(
                  title: 'ROOTS',
                  body:
                      'Game about ROOTS of Family. Main character have a choise "who is his enemy". After this, Main character fights with his enemies. By it he choose his way of relation with his mother. Idea: Psychology of understanding, that your system is not always on the bright side.',
                  image: 'assets/image/project/Preview_ROOTS.jpg',
                  screenshots: [
                    'assets/image/project/Screenshot_ROOTS_0.jpg',
                    'assets/image/project/Screenshot_ROOTS_1.jpg',
                  ],
                  links: 'https://globalgamejam.org/2023/games/roots-2-3',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: ColorsTool.accent,
        shape: CircleBorder(),
        child: Center(
          child: Icon(
            Icons.arrow_drop_up,
            size: 54,
            color: ColorsTool.accentShade,
          ),
        ),
      ),
    );
  }
}

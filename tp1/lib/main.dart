import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'MetaLink';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

const primaryColor1 = Color.fromARGB(255, 147, 170, 165);
const primaryColor2 = Color.fromARGB(255, 202, 198, 189);
const primaryColor3 = Color.fromARGB(255, 38, 83, 105);

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Accueil1(),
    Accueil2(),
    Accueil3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MetaLink'),
          backgroundColor: primaryColor1,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Friends',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            html.window.open('https://play.decentraland.org/', "_blank");
          },
          label: const Text('Jump in the Metaverse !'),
          icon: const Icon(Icons.add_circle_outline_outlined),
          backgroundColor: Colors.blue,
        ));
  }
}

class Accueil1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: primaryColor2,
      ),
      backgroundColor: primaryColor3,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/antoineillien/ressources/main/metalink.jpeg'),
            fit: BoxFit.contain,
          ),
        ),
        child: null,
      ),
    );
  }
}

class Ami {
  final String title;
  final String description;
  final String profile;

  const Ami(this.title, this.description, this.profile);
}

List<String> mainDataList = [
  "Neo",
  "Rick",
  "Morty",
  "Anakin",
  "David Bowie",
  "Trinity",
  "Kanye West",
  "Dr Manhattan",
  "Night Owl",
  "Ozymandias",
  "Charles Swann",
  "Capitaine Nemo",
  "Madonna",
  "Paul Atreides",
  "Hannibal Lecter",
  "Tony Montana",
  "Tony Soprano",
  "Anthony Bourdain",
  "Jocelin Beaumont",
  "Leon"
];

List<String> mainDetails = [
  "Neo was born in the year 20xx, in the city of San Francisco. When he was a child, he showed a natural gift for mathematics and programming. As he grew older, he began to experiment with virtual reality, and soon found himself addicted to the online world.In the year 20xx, he met Morpheus in the metaverse. Morpheus introduced him to the concept of the Matrix, a digital world where humans were used as a source of power for the machines. Neo was fascinated by the idea, and quickly agreed to be freed from the Matrix.With the help of Morpheus and his team of rebels, Neo learned to use his powers in the Matrix and eventually became their leader. He fought against the machines and saved many humans from enslavement.Neo is a hero to many, and his story is an inspiration to all who believe in the power of the human spirit.",
  "Rick is a 23-year-old computer programmer who grew up in a small town in upstate New York. He became interested in programming at a young age, and taught himself how to code. He is a self-taught hacker and has a reputation for being one of the best programmers in the metaverse.Rick is a loner who prefers working on his computer to interacting with other people. He is a master of coding languages and has created several popular programs that are used by millions of people around the world.Rick is a brilliant programmer, but he is also a bit of a recluse who is not very good at socializing. He is content to live in his own world, where he can write code and solve complex problems.",
  "Morty was born on September 3, 2036 in Chicago, Illinois. He was homeschooled by his parents, who were both computer programmers. At a young age, Morty showed a strong interest in programming and computers. He taught himself how to write code, and by the time he was 12, he had created several programs that were popular in the metaverse.In 2054, Morty graduated from high school and began studying computer science at the University of Chicago. He continued to develop new programs, and by the time he was 20, he had created several popular games that were played by people all over the metaverse.In 2064, Morty graduated from college and started working as a programmer for a software company in Chicago. He continued to develop new programs, and in 2072, he created a program that allowed people to travel to different parts of the metaverse. This program became very popular, and Morty soon became known as the \"father of the metaverse.\"In 2076, Morty retired from his programming job and moved to a cabin in the woods outside of Chicago. He continued to work on new programs, and in 2084, he created a program that allowed people to create their own virtual realities. This program became very popular, and Morty soon became known as the \"father of virtual reality.\"Morty passed away on December 7, 2101 at the age of 65. He is remembered as one of the most influential programmers in history, and his contributions to the metaverse are still felt today.",
  "Anakin was born on the planet Tatooine in the Outer Rim Territories. He was an orphan, having been born to a slave woman. He was taken from his mother and raised by Watto, a Toydarian junk dealer. Anakin was an exceptionally gifted pilot and mechanic. At the age of nine, he won a podrace that earned him the freedom of both himself and his mother.Shortly thereafter, Anakin was discovered by Jedi Knight Qui-Gon Jinn and taken to the Jedi Temple on Coruscant. After undergoing Jedi training, Anakin was assigned to the Jedi Knight Obi-Wan Kenobi. The two of them successfully completed numerous missions for the Republic.In Episode I: The Phantom Menace, Anakin was called upon to help protect the planet Naboo from the Separatists. He participated in the Battle of Naboo and was instrumental in the defeat of the Trade Federation.In Episode II: Attack of the Clones, it was revealed that Anakin had been romantically involved with Senator Padmé Amidala. The two of them eventually married.In Episode III: Revenge of the Sith, Anakin turned to the Dark Side of the Force and became Darth Vader. He participated in the Battle of Coruscant and helped to overthrow the Jedi Order. He also killed Padmé, who had been pregnant with his child.After being severely injured in the Battle of Mustafar, Vader was rescued by Emperor Palpatine and brought to the planet Mustafar. There, he was fitted with a cybernetic suit and became the Sith Lord known as Darth Vader.Throughout the rest of his life, Vader served the Empire as its deadliest enforcer. He was eventually confronted by his son, Luke Skywalker, who helped him to break free from the Emperor's control. Vader then sacrificed himself to destroy the Emperor.Anakin was a gifted pilot and mechanic. He was also an exceptionally powerful Force-user. His unwavering loyalty to the Jedi Order and the Republic eventually led him to the Dark Side of the Force, where he became Darth Vader. As Vader, he served the Empire loyally and was eventually confronted by his son, Luke Skywalker. Thanks to Luke's help, Vader was able to break free from the Emperor's control and sacrifice himself to save his son.",
  "David Bowie was born in Brixton, England on January 8, 1947. He was one of two children of a waitress and a nightclub promoter. Bowie began his music career in the early 1960s as a backing singer in a band called The Lower Third. He then released his first album in 1967.Bowie was a musical chameleon, changing his style with each album. He was also a master of reinvention, reinventing himself as a new character with each album. His alter egos included Ziggy Stardust, the Thin White Duke, and Aladdin Sane.Bowie was a pioneer in the use of music videos. His videos were often as innovative and outlandish as his music.Bowie was inducted into the Rock and Roll Hall of Fame in 1996.He died on January 10, 2016 after a long battle with cancer.",
  "Born in the late twentieth century, Trinity was a bright young woman who excelled in mathematics and science. When she discovered the internet in her early teens, she was fascinated by its potential to connect people from all over the globe.She quickly learned how to program and create websites, and soon became one of the world's first cyber-citizens. In the early days of the internet, she spent her days exploring virtual worlds and chatrooms, making friends from all over the world.In the late 1990s, she discovered the metaverse and was immediately hooked. She loved the feeling of being able to step into a completely different world, and soon became one of the most well-known and respected residents of Second Life.She was a pioneer in the use of virtual reality, and helped to popularize the use of avatars and virtual worlds for business and education. She was also a strong advocate for online privacy and security, and was one of the first people to start using encryption and security measures to keep her online activities safe.Trinity is a passionate advocate for the use of virtual worlds and the metaverse, and she believes that they have the potential to change the world for the better. She is a tireless promoter of virtual worlds and the metaverse, and she is always looking for new ways to use them to improve the lives of people all over the world.",
  "Kanye West was born in Atlanta, Georgia, in 1982. As a youngster, he showed an interest in music and began making beats at the age of 12. He attended art school in Chicago, Illinois, but eventually dropped out to pursue a music career. His first album, The College Dropout, was released in 2004 and was a huge success. West has since released several more albums, won multiple Grammy Awards, and become one of the most successful and acclaimed artists of our time.In the metaverse, Kanye West is a clone who bears an uncanny resemblance to the real-world West. He is a virtual celebrity, and his music is highly popular in the metaverse. West is known for his outspoken personality and often outrageous behavior. He is also a passionate advocate for virtual rights and often speaks out against censorship and discrimination.",
  "I first met Dr Manhattan in the metaverse, a digital realm that exists beyond our own physical reality. In the metaverse, I found myself in an ethereal white space, and there, in the distance, I saw a blue figure. I floated towards him and when I got close, I saw that it was Dr Manhattan.Dr Manhattan is a powerful being who exists beyond time and space. He is able to manipulate energy and matter at will, and he has a deep understanding of the universe and its workings. He is a noble and learned creature, and I was honoured to be in his presence.Dr Manhattan is a creature of immense power, but also of great compassion. He has a deep understanding of the universe and its workings, and is driven by a desire to help others. He is a force for good in the universe, and I know that I am lucky to have him as a friend.",
  "Night Owl is a fascinating person, and I feel lucky to have met her in the metaverse. She is a computer programmer who has been active in the field since the early days of the internet. She is also an accomplished artist, and her work has been shown in galleries around the world.Night Owl is an introvert who values her privacy, and she is not often willing to reveal much about herself. However, she is a kind and generous person, and she is always willing to help others. She is a passionate defender of freedom and liberty, and she has made a significant contribution to the online community.Night Owl is a unique and inspiring individual, and I feel privileged to know her. She is a true pioneer of the digital age, and I am sure that she will continue to make a lasting impact on the world.",
  "Ozymandias was born in ancient Persia. He was a great king and warrior, and he ruled his people with wisdom and justice. He was also a talented artist and builder, and he created many beautiful things. Ozymandias was proud and vain, and he loved to show off his power and wins. But he was also a fair and gracious ruler, and his people loved him.One day, Ozymandias met a strange traveler in the metaverse. This traveler told him about a new land where anyone could be anything they wanted to be. Ozymandias was curious, and he decided to explore this new place. He quickly fell in love with the metaverse, and he became one of its most beloved residents.Ozymandias is now one of the oldest and most respected residents of the metaverse. He has seen and done everything there is to do, and he continues to explore new worlds and meet new people. He is a symbol of hope and change, and he inspires everyone he meets.",
  "Charles Swann was born to a wealthy family in Paris in 1871. From a young age, he showed a keen interest in the arts and literature, and was particularly drawn to the works of Austen, Shakespeare, and Proust. He attended the best schools and universities in Paris, and after graduating, he embarked on a successful career in business.In his free time, Swann pursued his passion for the arts, becoming a patron of the ballet and opera. He was also a devoted member of the French aristocracy, and counted many influential politicians and socialites among his friends. Swann met Proust in the late 1890s, and the two men struck up a close friendship. Proust was fascinated by Swann's knowledge of art and literature, and the two would often discuss the works of Proust's favorite authors. Swann also became a regular visitor to Proust's home, where the writer would regale him with stories of his latest literary endeavors.Swann remained close friends with Proust until the writer's death in 1922. He was one of the last people to see Proust alive, and was present at the writer's bedside when he passed away.Swann continued to live in Paris until his death in 1936. He was buried at the Père Lachaise Cemetery, next to his friend Marcel Proust.",
  "Born in Naples, capitaine Nemo was orphaned at a young age. He went to sea at the age of sixteen and, by the time he was twenty, was the captain of his own vessel. He was renowned for his navigational skills and his knowledge of the oceans.In 1861, Nemo was involved in a naval battle off the coast of Tripoli. His ship was destroyed, and he was presumed dead. In reality, Nemo had been captured and taken to a prison in Constantinople. There, he met an inventor named Cyrus Harding, who helped him escape.Nemo & Harding later sailed to the South Pacific, where they discoveGoodfellas detailsred the entrance to a mysterious underwater kingdom. Nemo christened this kingdom \"the Nautilus\". He became its ruler and decided to use the Nautilus to strike back at those who had wronged him.For the next seventeen years, Nemo and the Nautilus travelled the world, seeking revenge on those who had destroyed his ship and killed his family. He was a mysterious figure, known only as \" capitaine Nemo \".\". Finally, in 1879, the Nautilus was damaged in a battle with the British Navy. Nemo was fatally wounded and, as his ship sunk beneath the waves, he uttered the words \"All my dreams have come true.",
  "Born in Michigan on August 16, 1958, Madonna Louise Ciccone is a pop singer and actress who has become one of the most successful and recognizable performers in the world. Raised by her Italian-American father and her mother, who died of cancer when Madonna was young, she began her career as a dancer on television programs. She made her singing debut in 1982 with the release of her self-titled album, Madonna.Throughout her career, Madonna has pushed the boundaries of popular culture, thanks to her sexually provocative lyrics and performances. She has also been an outspoken advocate for social and political issues, including HIV/AIDS awareness, LGBT rights, and women's empowerment. In 2008, she was inducted into the Rock and Roll Hall of Fame.Madonna has sold over 300 million records worldwide and has won numerous awards, including six Grammy Awards, eight Golden Globe Awards, and fourteen MTV Video Music Awards. She is also the mother of four children.",
  "Paul Atreides, born on Caladan in 10,191 A.G., is the son of Duke Leto Atreides and Lady Jessica. At an early age, he is sent to the planet Arrakis to become the heir of the duchy. There, he meets the Fremen, who teach him the ways of the desert and the jihad. After the death of his father, Paul becomes the leader of the Fremen and the emperor of the universe.",
  "Hannibal Lecter, born in Lithuania in 1933, immigrated to the United States in 1951. He attended medical school at Johns Hopkins University, and became a leading expert on psychiatric medicine. He is also a certified genius, with an IQ of 178.Lecter's career as a serial killer began in 1987, when he killed four people. He was finally apprehended and convicted of the murders in 1991. He is currently serving a life sentence without the possibility of parole.Lecter is a brilliant psychiatrist, and is considered to be one of the most dangerous men in the world. He is also a cannibal, and has been known to eat his victims' brains. He is a fascinating, yet deeply disturbing, figure.",
  "Tony Montana was born in Cuba in 1963. When he was a young boy, his parents fled to the United States, leaving him behind. Tony was eventually able to join his family in Miami, Florida, where he grew up in a rough neighborhood.At a young age, Tony began working for a local drug lord. He soon proved himself to be a ruthless and ambitious man, and he was promoted to a high-ranking position in the organization.In 1980, Tony and his associates stormed a military outpost in Miami, seeking to acquire a large supply of weapons. This event came to be known as the \"Cocaine Coup.\"Tony\'s criminal empire continued to grow, and by the early 1980s, he was one of the most powerful men in Miami. He controlled a major portion of the city\'s drug trade, and he was also involved in other illegal activities, such as prostitution and racketeering.In 1983, Tony was arrested and convicted on federal drug charges. He was sentenced to 15 years in prison, but he was released in 1989, thanks to a deal he made with the government.Upon his release, Tony returned to Miami and resumed his criminal activities. He was soon involved in a bloody power struggle with a rival drug lord, and he was ultimately killed in a gun battle.Tony Montana was a ruthless and ambitious man, who rose to power in the criminal underworld. He was a major player in the Miami drug trade, and he was also involved in other illegal activities, such as prostitution and racketeering. Tony was a brutal and feared leader, who met a violent end.",
  "Anthony \"Tony \" Soprano Jr. was born in 1959 to Livia and Anthony Soprano Sr. in Bloomfield, New Jersey. Tony Jr. was raised in a traditional Italian-American home and was the oldest of three children. His parents instilled in him a strong sense of tradition and family values. From a young age, Tony Jr. was interested in the mob. He loved the idea of being a \"made man\" and considered it an honor to be part of the Mafia.In 1995, Tony Jr. was diagnosed with panic disorder and bipolar disorder. This led to him seeking treatment from a psychiatrist, Dr. Jennifer Melfi. Tony Jr. soon began to see Dr. Melfi as a friend and confidant, and he opened up to her about his criminal activities as well as his struggles with mental illness.In 1999, Tony Jr. was indicted on federal charges of racketeering, extortion, and money laundering. However, he was ultimately acquitted due to lack of evidence.In 2001, Tony Jr.\'s mother, Livia, passed away. This event had a profound impact on Tony Jr., and he began to suffer from panic attacks and severe depression.In 2002, Tony Jr.\'s wife, Carmela, filed for divorce. This was a major turning point in Tony Jr.\'s life, and he began to suffer from a full-blown mid-life crisis. He was no longer able to maintain his dual life as a mob boss and a family man, and he decided to retire from the Mafia.In 2003, Tony Jr. starred in the HBO series The Sopranos. The show was a huge success, and it brought Tony Jr. international fame.In 2004, Tony Jr. was diagnosed with lung cancer. He underwent surgery and radiation therapy, and he eventually made a full recovery.In 2007, Tony Jr. was indicted on federal charges of racketeering, extortion, and money laundering. However, he was once again acquitted due to lack of evidence.In 2010, Tony Jr. released his autobiography, “I Soprano.”In 2013, Tony Jr. was diagnosed with chronic traumatic encephalopathy (CTE), a neurodegenerative disease caused by repeated head injuries. This news was a major shock to Tony Jr. and his family, and it led him to reevaluate his life and his choices.In 2014, Tony Jr. made a guest appearance on the HBO series The Jinx. In the final episode, he was heard saying, “You’re dead to me,” which many believe was a confession to the murders of his former colleagues, John Gotti Jr. and James “Jimmy” Altomare.Tony Soprano died in June of 2019 from a heart attack. He was 60 years old.",
  "Anthony Bourdain was born in 1956 in New York City. As a young man, he worked in a number of prestigious kitchens, including that of Les Halles. In 2002, he published his autobiography, \" Kitchen Confidential: Adventures in the Culinary Underbelly \", which made him a household name.In 2005, Bourdain began hosting the Travel Channel\'s culinary and cultural adventure program \" No Reservations \". In 2013, he joined the CNN family with a new show, \" Parts Unknown \".Bourdain was a gifted storyteller, and his programs were as much about the people and places he visited as they were about the food. He was a vocal advocate for culinary literacy and travel, and he used his celebrity to promote understanding and respect for other cultures.Bourdain was known for his wit, irreverence, and passion for life. He died in 2018, at the age of 61.",
  "Jocelin Beaumont was born on October 20, 1967, in the city of Lyon, France. He was the son of a factory worker and a housewife. From a young age, Jocelin was fascinated by violence and was constantly getting into fights with other children. When he was 17, he enlisted in the French Army and served in the elite DGSE unit, Service Action.As a member of Service Action, Jocelin was trained in all forms of espionage and assassination. He was a ruthless killer, and he loved his job. In 1995, Jocelin was sent on a mission to assassinate a high-ranking Sudanese diplomat in Paris. He succeeded in completing his mission, but he was killed in the process.Jocelin\'s soul was then transported to the metaverse, a digital world where consciousness can exist after death. In the metaverse, Jocelin was able to live on forever. He became a master of assassination, and he was known as the \"Killer of Kings.\"In the metaverse, Jocelin met a woman named Juliette. The two of them fell in love, and they eventually married. Juliette convinced Jocelin to give up his life of violence, and the two of them moved to the United States, where they started a new life together.But Jocelin\'s past life would always haunt him. He could never forget the things he had done as a member of Service Action, and he knew that he would always be a killer.",
  "Born in Marseille, Leon grew up in a poor family. As a young man, he turned to a life of crime, and quickly became a professional assassin. He is one of the most sought-after killers in the world, and has been responsible for the deaths of dozens of high-profile targets. He is a master of disguise and is believed to have never been caught. He is a skilled swordsman and hand-to-hand combatant, and is said to be immune to pain."
];

List<String> mainImages = [
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc1.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc2.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc3.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc4.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc5.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc6.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc7.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc8.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc9.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc10.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc11.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc12.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc13.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc14.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc15.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc16.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc17.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc18.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc19.png",
  "https://raw.githubusercontent.com/antoineillien/ressources/main/bayc20.png",
];

class Accueil2 extends StatelessWidget {
  @override
  final amis = List.generate(
    20,
    (i) => Ami(
      mainDataList[i],
      mainDetails[i],
      mainImages[i],
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
        title: Text("Friends"),
      ),
      backgroundColor: primaryColor2,
      body: ListView.builder(
        itemCount: amis.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(amis[index].profile)),
            title: Text(amis[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(ami: amis[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Accueil3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
        title: Text("More"),
      ),
      backgroundColor: primaryColor2,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: const Center(
                child: Text(
              'Made by Antoine Illien with Flutter',
            )),
          ),
          Container(
            child: Image(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/antoineillien/ressources/main/profile_rounded.png')),
          ),
        ],
      ),
    );
  }
}

class AmisScreen extends StatelessWidget {
  // Requiring the list of todos.
  const AmisScreen({Key? key, required this.amis}) : super(key: key);

  final List<Ami> amis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amis'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: amis.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(amis[index].title),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.ami}) : super(key: key);

  // Declare a field that holds the Todo.
  final Ami ami;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor2,
        title: Text(ami.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            child: Text(
              ami.description,
            ),
          ),
          Container(
            child: Image(image: NetworkImage(ami.profile)),
          ),
        ],
      ),
    );
  }
}
//Text(ami.description)
//https://play.decentraland.org/
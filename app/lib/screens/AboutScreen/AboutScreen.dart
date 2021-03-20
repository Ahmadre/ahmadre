import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinycolor/tinycolor.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 720,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight()
                          ? Colors.black54
                          : Colors.white54,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'About',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: '''
"Ahmadre" stands for the user name my German teacher gave me in my high school graduation class to access the library.

Why this random name? Because my German teacher was the only person in my life who believed in me even in the most difficult moments. All the teachers told us that nothing would be made of us, but he was the only one who motivated me to keep applying for a job in IT.

And indeed, I was then offered an apprenticeship as an IT specialist directly in the city administration.

After my apprenticeship and even before I started my IT studies, I wanted to see him again to thank him for everything.

But only two years after I left high school...

he died...

...of cancer. And I heard this directly from his son when I searched social media channels.

I promised him to bring out the best in me and show the "you can't do it anyway" people that I can!

And I did. Soon after I finished college, I started working as a software developer for an eHealth company.
                  ''',
                  style: TextStyle(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    color: TinyColor(Theme.of(context).scaffoldBackgroundColor).isLight() ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

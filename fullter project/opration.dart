import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../web/webview_screen.dart';
import 'package:student/class9/book/gujrati/youtube_player_screen.dart';

class Gujrati extends StatelessWidget {
  final String bookTitle;

  Gujrati({Key? key, required this.bookTitle}) : super(key: key);

  // Display title list
  final List<String> chapterTitles = const [
    '1. સાંજ સમે શામળિયો',
    '2. ચોરી અને પ્રાયશ્ચિત્ત',
    '3. પછે શામળિયોજી બોલિયા',
    '4. ગોપાળબાપા',
    '5. ગુર્જરીના ગૃહકુંજે',
    '6. લોહીની સગાઈ',
    '7. કામ કરે ઈ જીતે',
    '8. છાલ, છોતરાં અને ગોટલા',
    '9. પુત્રવધૂનું સ્વાગત',
    '10. ભારતીય સંસ્કૃતિની સિદ્ધિ',
    '11. મરજીવિયા',
    '12. સખી માર્કંડી',
    '13. રસ્તો કરી જવાના',
    '14. વાડી પરનાં વહાલાં',
    '15. ગોદ માતની ક્યાં ?',
    '16. કુદરતી',
    '17. મારા સપનામાં આવ્યા હરિ',
    '18. પંગું લંઘયતે ગિરિમ્',
    '19. પપ્પા, હવે ફોન મૂકું ?',
    '20. સમાજ સમર્પિત શ્રેષ્ઠી',
    '21. તેજમલ',
    '22. બોળો ',
    '23. લઘુકાવ્યો (દુહા-મુક્તક-હાઈકુ)',
    '24. પ્રેરક પ્રસંગો ',
    '25. પથ-દર્શિની ગીતા',
    '26. ભગવદ્ ગીતા અને હું ',
    'વ્યાકરણ એકમ-1 : ધ્વનિશ્રેણી, સંજ્ઞા, વિશેષણ, સર્વનામ',
    'વ્યાકરણ એકમ-1 : ધ્વનિશ્રેણી, સંજ્ઞા, વિશેષણ, સર્વનામ',
    'વ્યાકરણ એકમ-2 : ધાતુ-પ્રત્યય',
    'વ્યાકરણ એકમ-3 : રવાનુકારી, અંગસાધક પ્રત્યય, સંધિ',
    'વ્યાકરણ એકમ-4 : સમાસ',
    'વ્યાકરણ એકમ-5 : વાક્યપ્રકાર',
    'વ્યાકરણ એકમ-6 : અલંકાર',
    '1. પંડયનાં',
    '2. એકલો જાને રે',
    '3. કાશીમાની કૂતરી',
    '4. ઉપયોગી ટાંકણી લઈ લઈએ',


    



  ];

  // Internal ID used for mapping
  final List<String> chapterKeys = const [
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
    'Chapter 4',
    'Chapter 5',
    'Chapter 6',
    'Chapter 7',
    'Chapter 8',
    'Chapter 9',
    'Chapter 10',
    'Chapter 11',
    'Chapter 12',
    'Chapter 13',
    'Chapter 14',
    'Chapter 15',
    'Chapter 16',
    'Chapter 17',
    'Chapter 18',
    'Chapter 19',
    'Chapter 20',
    'Chapter 21',
    'Chapter 22',
    'Chapter 23',
    'Chapter 24',
    'Chapter 25',
    'Chapter 26',
    'Chapter 27',
    'Chapter 28',
    'Chapter 29',
    'Chapter 30',
    'Chapter 31',
    'Chapter 32',
    'Chapter 33',
    'Chapter 34',
    'Chapter 35',
    'Chapter 36',





  ];

  final Map<String, String> pdfLinks = {
    'Chapter 1': 'https://drive.google.com/file/d/1jnm-JWn-v6jyU-tzI1QVyn5Lt8Gle2Vf/view?usp=drive_link',
    'Chapter 2': 'https://drive.google.com/file/d/1QZlNbYVYiwM5ZvhO7YTnEpukR1c1EYqX/view?usp=drive_link',
    'Chapter 3': 'https://drive.google.com/file/d/13cQGnEmguNb4dOWONQezsbt4GfEFoQCU/view?usp=drive_link',
    'Chapter 4': 'https://drive.google.com/file/d/16gL_TzgHvBgJNqMKMGx-LPwBQy8mZlhg/view?usp=drive_link',
    'Chapter 5':'https://drive.google.com/file/d/1_GuAoHrMSNyJ80k1HD2EqdeclX-zF0Ck/view?usp=drive_link',
    'Chapter 6':'https://drive.google.com/file/d/1V5lRYulTkbt6WJ88-1hNVAfBg-UjLFhl/view?usp=drive_link',
    'Chapter 7': 'https://drive.google.com/file/d/1YHK1I_X5mYQsWVeGnp2dBd_KiIj9y65n/view?usp=drive_link',
    'Chapter 8': 'https://drive.google.com/file/d/1-xUZOTaWtL9ot6FKRtwggP_UI_YP09bZ/view?usp=drive_link',
    'Chapter 9': 'https://drive.google.com/file/d/1gL11zZYlS9z8uvXzWQeAEKgADKU4xVAy/view?usp=drive_link',
    'Chapter 10': 'https://drive.google.com/file/d/12UrN7NqSiTGsVAIlYuXUVOS54iQ-vhEJ/view?usp=drive_link',
    'Chapter 11': 'https://drive.google.com/file/d/1Ujv9wj3n8VLv6MpFsg_K-w1tQUdw6f3Q/view?usp=drive_link',
    'Chapter 12': 'https://drive.google.com/file/d/1YcyDaHOWYBwm-JtQ3WV8SCptLg93KKFP/view?usp=drive_link',
    'Chapter 13': 'https://drive.google.com/file/d/1_BkCPutJIB--Bd99d9BL7PhzfMjFwWXS/view?usp=drive_link',
    'Chapter 14': 'https://drive.google.com/file/d/1ojiiritkNmRc5_JTsEQwvVkvZuDEveXr/view?usp=drive_link',
    'Chapter 15': 'https://drive.google.com/file/d/1OUhykcl-j6sYzlwOl61x_3uCtkM5GL7c/view?usp=drive_link',
    'Chapter 16': 'https://drive.google.com/file/d/1OTt-0DtZFoG86svEPTQIYdzd6wDPBvjG/view?usp=drive_link',
    'Chapter 17': 'https://drive.google.com/file/d/1ZYjO3eBX-HniFfLfPOoLN93HcXduFXeS/view?usp=drive_link',
    'Chapter 18': 'https://drive.google.com/file/d/1XL9qyU9r0EBexrZBSSoZot38YmwN-3fo/view?usp=drive_link',
    'Chapter 19': 'https://drive.google.com/file/d/1gM9oGeI6zQQ43hGBQWrljnnQ5vW8_h3x/view?usp=drive_link',
    'Chapter 20': 'https://drive.google.com/file/d/1GdIkKpg-1fW-y7Hty9WIFFMpdP6NwTcd/view?usp=drive_link',
    'Chapter 21': 'https://drive.google.com/file/d/1b1ozY6sXXTd_JG6wSfkHdPCPWsb2BIpG/view?usp=drive_link',
    'Chapter 22': 'https://drive.google.com/file/d/1ne83lbQWdXzvZYEfSPEd9cqQfbpvp8Bh/view?usp=drive_link',
    'Chapter 23': 'https://drive.google.com/file/d/1powzstytgz057T2-UYZnCd82gsZvNjzQ/view?usp=drive_link',
    'Chapter 24': 'https://drive.google.com/file/d/1mQ0Zz2m5MmzA5Vet-7eOTeQ57U1R56g-/view?usp=drive_link',
    'Chapter 25': 'https://drive.google.com/file/d/1wd2VPMnF-esirve-UBDuLK8OcTFsbQsk/view?usp=drive_link',
    'Chapter 26': 'https://drive.google.com/file/d/1GdNCLvnnwJxBcgi9_UZNPL2Zl8rf0q_8/view?usp=drive_link',
    'Chapter 27': 'https://drive.google.com/file/d/1NWHlqhN-88UsZDbH65XKsaDOAMwA8eIq/view?usp=drive_link',
    'Chapter 28': 'https://drive.google.com/file/d/1kSbPPNIDJhQjxhYLYQBVq_KVsH0opF8O/view?usp=drive_link',
    'Chapter 29': 'https://drive.google.com/file/d/1xikgP5Uhm-_hdvoeQlG3t-eWNCk5NFnh/view?usp=drive_link',
    'Chapter 30': 'https://drive.google.com/file/d/1gVJ8yqv51Ff1hZq739ptmLvkXbyHjoQd/view?usp=drive_link',
    'Chapter 31': 'https://drive.google.com/file/d/10Eh5c9sIdtn8HTwmvmG0WJz1Q8Wf043V/view?usp=drive_link',
    'Chapter 32': 'https://drive.google.com/file/d/1r7TIIbdGPwDg0g-Kwt_N_TyLqdnfqn-_/view?usp=drive_link',
    'Chapter 33': 'https://drive.google.com/file/d/1gXQ3_Yy6Df_mHYAYLL0R00cAJcCdSo0G/view?usp=drive_link',
    'Chapter 34': 'https://drive.google.com/file/d/1Gif0p9s4v4A2X-083TJU9zGuFfl8PC-J/view?usp=drive_link',
    'Chapter 35': 'https://drive.google.com/file/d/1O9Q9AlGPtQPzYXWjSMI7ttTNpRVMk78r/view?usp=drive_link',
    'Chapter 36': 'https://drive.google.com/file/d/1GjvaYdMuJuzw8_aKw9meyOfAABHb1Kw1/view?usp=drive_link',
  };

  final Map<String, List<String>> youtubeVideoIds = {
    'Chapter 1': ['cpy8UZ886bg', 'dQw4w9WgXcQ'],
    'Chapter 2': ['ct4ak9GFy3k'],
    'Chapter 3': ['ct4ak9GFy3k', 'cpy8UZ886bg'],
    'Chapter 4': ['ct4ak9GFy3k'],
    'Chapter 5':[''],
    'Chapter 6':[''],
    'Chapter 7':[''],
    'Chapter 8':[''],
    'Chapter 9':[''],
    'Chapter 10':[''],
    'Chapter 11':[''],
    'Chapter 12':[''],
    'Chapter 13':[''],
    'Chapter 14':[''],
    'Chapter 15':[''],
    'Chapter 16':[''],
    'Chapter 17':[''],
    'Chapter 18':[''],
    'Chapter 19':[''],
    'Chapter 20':[''],
    'Chapter 21':[''],
    'Chapter 22':[''],
    'Chapter 23':[''],
    'Chapter 24':[''],
    'Chapter 25':[''],
    'Chapter 26':[''],
    'Chapter 27':[''],
    'Chapter 28':[''],
    'Chapter 29':[''],
    'Chapter 30':[''],
    'Chapter 31':[''],
    'Chapter 32':[''],
    'Chapter 33':[''],
    'Chapter 34':[''],
    'Chapter 35':[''],
    'Chapter 36':[''],
  };

  final Map<String, String> swadhyayLinks = {
    'Chapter 1': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch1.html',
    'Chapter 2': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch2.html',
    'Chapter 3': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch3.html',
    'Chapter 4': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch4.html',
    'Chapter 5':'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch5.html',
    'Chapter 6':'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch6.html',
    'Chapter 7': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch7.html',
    'Chapter 8': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch8.html',
    'Chapter 9': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch9.html',
    'Chapter 10': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch10.html',
    'Chapter 11': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch11.html',
    'Chapter 12': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch12.html',
    'Chapter 13': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch13.html',
    'Chapter 14': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch14html',
    'Chapter 15': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch15.html',
    'Chapter 16': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch16.html',
    'Chapter 17': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch17.html',
    'Chapter 18': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch18.html',
    'Chapter 19': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch19.html',
    'Chapter 20': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch20.html',
    'Chapter 21': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch21.html',
    'Chapter 22': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch22.html',
    'Chapter 23': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch23.html',
    'Chapter 24': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch24.html',
    'Chapter 25': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch25.html',
    'Chapter 26': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch26.html',
    'Chapter 27': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch27.html',
    'Chapter 28': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch28.html',
    'Chapter 29': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch29.html',
    'Chapter 30': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch30.html',
    'Chapter 31': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch31.html',
    'Chapter 32': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch32.html',
    'Chapter 33': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch33.html',
    'Chapter 34': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch34.html',
    'Chapter 35': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch35.html',
    'Chapter 36': 'https://educationapp799.github.io/app/class9/subject/gujrati/svadaya/ch36.html',
  };

  final Map<String, String> mcqLinks = {
    'Chapter 1': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch1.html',
    'Chapter 2': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch2.html',
    'Chapter 3': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch3.html',
    'Chapter 4': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch4.html',
    'Chapter 5':'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch5.html',
    'Chapter 6':'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch6.html',
    'Chapter 7': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch7.html',
    'Chapter 8': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch8.html',
    'Chapter 9': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch9.html',
    'Chapter 10': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch10.html',
    'Chapter 11': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch11.html',
    'Chapter 12': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch12.html',
    'Chapter 13': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch13.html',
    'Chapter 14': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch14.html',
    'Chapter 15': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch15.html',
    'Chapter 16': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch16.html',
    'Chapter 17': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch17.html',
    'Chapter 18': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch18.html',
    'Chapter 19': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch19.html',
    'Chapter 20': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch20.html',
    'Chapter 21': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch21.html',
    'Chapter 22': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch22.html',
    'Chapter 23': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch23.html',
    'Chapter 24': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch24.html',
    'Chapter 25': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch25.html',
    'Chapter 26': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch26.html',
    'Chapter 27': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch27.html',
    'Chapter 28': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch28.html',
    'Chapter 29': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch29.html',
    'Chapter 30': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch30.html',
    'Chapter 31': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch31.html',
    'Chapter 32': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch32.html',
    'Chapter 33': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch33.html',
    'Chapter 34': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch34.html',
    'Chapter 35': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch35.html',
    'Chapter 36': 'https://educationapp799.github.io/app/class9/subject/gujrati/mcq/ch36.html',
  };

  Future<void> _launchURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    try {
      final bool launched = await launchUrl(uri, mode: LaunchMode.platformDefault);
      if (!launched) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not launch URL')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error launching URL: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(bookTitle),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF74ebd5), Color(0xFFACB6E5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: chapterKeys.length,
            itemBuilder: (context, index) {
              final key = chapterKeys[index];
              final title = chapterTitles[index];

              return Card(
                color: Colors.white.withOpacity(0.9),
                elevation: 8,
                margin: const EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 12,
                        runSpacing: 8,
                        children: [
                          _coloredButton('Book', Colors.orange, () {
                            final url = pdfLinks[key];
                            if (url != null) {
                              _launchURL(context, url);
                            }
                          }),
                          _coloredButton('Video', Colors.teal, () {
                            final videos = youtubeVideoIds[key];
                            if (videos != null && videos.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => YouTubeVideoListScreen(
                                    videoIds: videos,
                                    title: '$title - Videos',
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('No videos available for this chapter')),
                              );
                            }
                          }),
                          _coloredButton('Swadhyay', Colors.deepPurple, () {
                            final url = swadhyayLinks[key];
                            if (url != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WebViewScreen(
                                    url: url,
                                    title: '$title - Swadhyay',
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Swadhyay not available for this chapter')),
                              );
                            }
                          }),
                          _coloredButton('MCQ', Colors.pink, () {
                            final url = mcqLinks[key];
                            if (url != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WebViewScreen(
                                    url: url,
                                    title: '$title - MCQ',
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('MCQ not available for this chapter')),
                              );
                            }
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _coloredButton(String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 6,
        shadowColor: color.withOpacity(0.5),
      ),
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

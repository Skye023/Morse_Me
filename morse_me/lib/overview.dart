class Info {
  String label;
  String imgURL;
  String info;
  Info(this.label, this.imgURL, this.info);
  static List<Info> inf = [
    Info(
      'History of Morse Code',
      'assets/Fun-with-Morse-Code_Page_5.png',
      'Morse code is a method used in telecommunication to encode text characters as standardized sequences of two different signal durations, called dots and dashes, or dits and dahs. Morse code is named after Samuel Morse, one of the inventors of the telegraph.',
    ),
    Info(
      'International Morse Code',
      'assets/International_Morse_Code.svg.png',
      'Morse code has been in use for more than 160 years — longer than any other electrical coding system. What is called Morse code today is actually somewhat different from what was originally developed by Vail and Morse. The Modern International Morse code, or continental code, was created by Friedrich Clemens Gerke in 1848 and initially used for telegraphy between Hamburg and Cuxhaven in Germany. Gerke changed nearly half of the alphabet and all of the numerals, providing the foundation for the modern form of the code. After some minor changes, International Morse Code was standardized at the International Telegraphy Congress in 1865 in Paris and was later made the standard by the International Telecommunication Union (ITU). Morse\'s original code specification, largely limited to use in the United States and Canada, became known as American Morse code or "railroad code". American Morse code is now seldom used except in historical re-enactments.',
    ),
    Info(
      'American Morse Code',
      'assets/american-morse-code-mark-rogan-transparent.png',
      'American Morse Code — also known as Railroad Morse—is the latter-day name for the original version of the Morse Code developed in the mid-1840s, by Samuel Morse and Alfred Vail for their electric telegraph. The "American" qualifier was added because, after most of the rest of the world adopted "International Morse Code," the companies that continued to use the original Morse Code were mainly located in the United States. American Morse is now nearly extinct—it is most frequently seen in American railroad museums and American Civil War reenactments—and "Morse Code" today virtually always means the International Morse which supplanted American Morse.',
    ),
  ];
}

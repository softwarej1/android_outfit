class ImagePath {
  static String get genderTabImage => 'assets/images/genderTab.png';

  static String get seasonTabImage => 'assets/images/seasonTab.png';
  static String get situationTabImage => 'assets/images/situationTab.png';

  static List<String> gen_iconimage = [
    'assets/icon/man.png',
    'assets/icon/woman.png',
  ];
  static List<String> season_iconimage = [
    'assets/icon/spring.png',
    'assets/icon/summer.png',
    'assets/icon/fall.png',
    'assets/icon/winter.png',
  ];
  static List<String> situation_iconimage = [
    'assets/icon/attendance.png',
    'assets/icon/campus.png',
    'assets/icon/date.png',
    'assets/icon/exercise.png',
  ];

  static List<List<List<List<String>>>> ContextualImage = [
    // 남성
    [
      // 봄
      [
        //출근
        [
          'assets/images/man/spring/attendance/attendance.jpg',
          'assets/images/man/spring/attendance/attendance1.jpg',
          'assets/images/man/spring/attendance/attendance2.jpg',
        ],
        // 캠퍼스
        [
          'assets/images/man/spring/campus/campus.jpg',
          'assets/images/man/spring/campus/campus1.jpg',
          'assets/images/man/spring/campus/campus2.jpg',
          'assets/images/man/spring/campus/campus3.jpg',
          'assets/images/man/spring/campus/campus4.jpg',
        ],
        // 데이트
        [
          'assets/images/man/spring/date/date.jpg',
          'assets/images/man/spring/date/date1.jpg',
          'assets/images/man/spring/date/date2.jpg',
          'assets/images/man/spring/date/date3.jpg',
        ],
        // 운동
        [
          'assets/images/man/spring/exercise/exercise.jpg',
          'assets/images/man/spring/exercise/exercise1.jpg',
        ],
      ],
      // 여름
      [
        // 출근
        [
          'assets/images/man/summer/attendance/attendance.jpg',
          'assets/images/man/summer/attendance/attendance1.jpg',
          'assets/images/man/summer/attendance/attendance2.jpg',
          'assets/images/man/summer/attendance/attendance3.jpg',
          'assets/images/man/summer/attendance/attendance4.jpg',
        ],
        // 캠퍼스
        [
          'assets/images/man/summer/campus/campus.jpg',
          'assets/images/man/summer/campus/campus1.jpg',
          'assets/images/man/summer/campus/campus2.jpg',
        ],
        // 데이트
        [
          'assets/images/man/summer/date/date.jpg',
          'assets/images/man/summer/date/date1.jpg',
          'assets/images/man/summer/date/date2.jpg',
        ],
        // 운동
        [
          'assets/images/man/summer/exercise/exercise.jpg',
          'assets/images/man/summer/exercise/exercise1.jpg',
          'assets/images/man/summer/exercise/exercise2.jpg',
        ],
      ],
      // 가을
      [
        // 출근
        [
          'assets/images/man/fall/attendance/attendance1.jpg',
          'assets/images/man/fall/attendance/attendance2.jpg',
          'assets/images/man/fall/attendance/attendance3.jpg',
          'assets/images/man/fall/attendance/attendance.jpg',
        ],
        // 캠퍼스
        [
          'assets/images/man/fall/campus/campus.jpg',
          'assets/images/man/fall/campus/campus1.jpg',
          'assets/images/man/fall/campus/campus2.jpg',
          'assets/images/man/fall/campus/campus3.jpg',
        ],
        // 데이트
        [
          'assets/images/man/fall/date/date.jpg',
          'assets/images/man/fall/date/date1.jpg',
        ],
        // 운동
        [
          'assets/images/man/fall/exercise/exercise.jpg',
        ],
      ],
      // 겨울
      [
        // 출근
        [
          'assets/images/man/winter/attendance/attendance1.jpg',
          'assets/images/man/winter/attendance/attendance2.jpg',
          'assets/images/man/winter/attendance/attendance3.jpg',
        ],
        // 캠퍼스
        [
          'assets/images/man/winter/campus/campus.jpg',
          'assets/images/man/winter/campus/campus1.jpg',
          'assets/images/man/winter/campus/campus2.jpg',
        ],
        // 데이트
        [
          'assets/images/man/winter/date/date.jpg',
          'assets/images/man/winter/date/date1.jpg',
          'assets/images/man/winter/date/date2.jpg',
        ],
        // 운동
        [
          'assets/images/man/winter/exercise/exercise.jpg',
          'assets/images/man/winter/exercise/exercise1.jpg',
        ],
      ],
    ],
    // 여성
    [
      // 봄
      [
        // 출근
        [
          'assets/images/woman/spring/attendance/attendance.jpg',
          'assets/images/woman/spring/attendance/attendance1.jpg',
        ],
        // 캠퍼스
        [
          'assets/images/woman/spring/campus/campus.jpg',
          'assets/images/woman/spring/campus/campus1.jpg',
          'assets/images/woman/spring/campus/campus2.jpg',
        ],
        // 데이트
        [],
        // 운동
        [],
      ],
      // 여름
      [
        // 출근
        [],
        // 캠퍼스
        [
          'assets/images/woman/summer/campus/campus.jpg',
          'assets/images/woman/summer/campus/campus1.jpg',
          'assets/images/woman/summer/campus/campus2.jpg',
        ],
        // 데이트
        [],
        // 운동
        [],
      ],
      // 가을
      [
        // 출근
        [],
        // 캠퍼스
        [],
        // 데이트
        [],
        // 운동
        [],
      ],
      // 겨울
      [
        // 출석
        [],
        // 캠퍼스
        [],
        // 데이트
        [],
        // 운동
        [],
      ],
    ],
  ];
}

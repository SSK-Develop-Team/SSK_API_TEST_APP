/*
 * @author Jiwon Lee
 *  API 통신 응답 시 사용하는 객체 
 * esmTestLog : 사용자의 최근 정서 반복 기록
 * Date와 Time을 서버와 타입을 일치시키기 편하도록 string값으로 전달함(String형식은 아래 참고)
 */
class EsmTestLog {
  String? date; // YYYY-mm-dd
  String? time; // HH:mm:ss

  EsmTestLog({this.date, this.time});

  factory EsmTestLog.fromJson(Map<String, dynamic> json) {
    return EsmTestLog(
      date: json['date'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() => {
        "date": date,
        "time": time,
      };
}

// class User {
//   int? typeId;
//   int optionId;
//   int? formId;
//   int? tasteId;
//   String imagePath;
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'] ?? Random().nextInt(1000) + 200,
//       name: json['task']?.cast<Map, dynamic>()['name'] ?? json['name'],
//       description:
//       json['task']?.cast<Map, dynamic>()['desc'] ?? 'Задача с Redmine',
//       deadline: DateTime.parse(json['date_expired']),
//       isDone: json['is_done'] ?? false,
//       todoWeight: json['weight'] ?? json['priority'],
//       todoOwner: json['manager']?.cast<Map, dynamic>()['email'] ?? 'Redmine',
//     );
//   }
//
// }
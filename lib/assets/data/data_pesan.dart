class DataPesan {
  final int id;
  final String message;

  DataPesan({required this.id, required this.message});

  factory DataPesan.fromJson(Map<String, dynamic> json) {
    return DataPesan(
      id: json['id'],
      message: json['message'],
    );
  }
}

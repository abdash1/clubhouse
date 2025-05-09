class Club {
  final String id;
  final String name;

  Club({required this.id, required this.name});

  factory Club.fromMap(Map<String, dynamic> map, String docId) {
    return Club(
      id: docId,
      name: map['name'] ?? '',
    );
  }
}

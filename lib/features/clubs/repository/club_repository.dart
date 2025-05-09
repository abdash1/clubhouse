import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/models/club_model.dart';

class ClubRepository {
  final FirebaseFirestore firestore;

  ClubRepository({required this.firestore});

  Future<List<Club>> fetchClubs() async {
    final snapshot = await firestore.collection('clubs').get();
    return snapshot.docs
        .map((doc) => Club.fromMap(doc.data(), doc.id))
        .toList();
  }
}

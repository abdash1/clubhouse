import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clubhub/features/clubs/repository/club_repository.dart';

class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}
class MockCollectionReference extends Mock implements CollectionReference {}
class MockQuerySnapshot extends Mock implements QuerySnapshot {}
class MockQueryDocumentSnapshot extends Mock implements QueryDocumentSnapshot {}

void main() {
  group('Club Repository Tests', () {
    late MockFirebaseFirestore mockFirestore;
    late ClubRepository repository;

    setUp(() {
      mockFirestore = MockFirebaseFirestore();
      repository = ClubRepository(firestore: mockFirestore);
    });

    test('Should fetch clubs', () async {
      final mockCollection = MockCollectionReference();
      final mockSnapshot = MockQuerySnapshot();
      final mockDoc = MockQueryDocumentSnapshot();

      when(mockFirestore.collection('clubs')).thenReturn(mockCollection);
      when(mockCollection.get()).thenAnswer((_) async => mockSnapshot);
      when(mockSnapshot.docs).thenReturn([mockDoc]);
      when(mockDoc.id).thenReturn('1');
      when(mockDoc.data()).thenReturn({'name': 'Photography Club'});

      final clubs = await repository.fetchClubs();

      expect(clubs.length, 1);
      expect(clubs[0].name, 'Photography Club');
    });
  });
}

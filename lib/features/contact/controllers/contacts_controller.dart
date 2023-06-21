import 'package:chatapp/features/contact/repository/contacts_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contactControllerProvider = FutureProvider((ref) {
  final contactRepository = ref.watch(contactsRepositoryProvider);
  return contactRepository.getAllContacts();
});

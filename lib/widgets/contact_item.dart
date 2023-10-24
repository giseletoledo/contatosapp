import 'package:contatosapp/model/contact.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(contact.urlavatar ?? 'sem imagem'),
      ),
      title: Text(contact.name ?? "sem nome"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Telefone: ${contact.phone}"),
          Text("Email: ${contact.email}"),
          Text("Data de criação: ${contact.createdAt}"),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              //showEditDialog(context, contact);
            },
          ),
        ],
      ),
    );
  }
}
import 'dart:convert';

import 'package:basapp/view/screens/servicePaycheck.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MakerScreen extends StatefulWidget {
  final Map<String, dynamic> makerData;

  const MakerScreen({super.key, required this.makerData});

  @override
  _MakerScreenState createState() => _MakerScreenState();
}

class _MakerScreenState extends State<MakerScreen> {
  List<dynamic> _services = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMakerServices();
  }

  Future<void> _fetchMakerServices() async {
    final makerId = widget.makerData['id'];
    final url =
        'https://thefuturebasapp.shop/api/get_services_by_maker.php?maker_id=$makerId';

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _services = data;
          _isLoading = false;
        });
      } else {
        throw Exception(
            'Erro ao buscar serviços: Código ${response.statusCode}');
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao buscar serviços: $error')),
      );
    }
  }

  void _onItemTap(Map<String, dynamic> result) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServicePaycheck(makerData: result),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.makerData['nome'] ?? 'Detalhes do Maker'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            CustomCard(
              altura: 200,
              largura: 400,
              gradient:
                  const LinearGradient(colors: [Colors.grey, Colors.grey]),
              child: Image.asset('asset/images/basapp.png'),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 15, 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nome: ${widget.makerData['nome']}',
                      style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 10),
                  Text('Categorias: ${widget.makerData['categorias']}',
                      style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Text('Descrição: ${widget.makerData['descricao']}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 20),
                  const Text('Serviços Disponíveis:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  _isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : _services.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: _services.length,
                              itemBuilder: (context, index) {
                                final service = _services[index];
                                return InkWell(
                                  onTap: () => _onItemTap(service),
                                  child: ListTile(
                                    title: Text(service['nome']),
                                    subtitle: Text(service['descricao']),
                                    trailing: Text('R\$ ${service['preco']}'),
                                  ),
                                );
                              },
                            )
                          : const Center(
                              child: Text('Nenhum serviço encontrado')),
                ],
              ),
            ),
          ],
        )));
  }
}

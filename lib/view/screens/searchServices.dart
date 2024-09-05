import 'dart:convert';

import 'package:basapp/view/screens/MakerScreen.dart';
import 'package:basapp/view/screens/servicePaycheck.dart';
import 'package:basapp/view/widgets.dart/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchServicesScreen extends StatefulWidget {
  const SearchServicesScreen({super.key});

  @override
  _SearchServicesScreenState createState() => _SearchServicesScreenState();
}

class _SearchServicesScreenState extends State<SearchServicesScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];
  bool _isMakersSelected = true;
  Future<void> _search() async {
    final query = _searchController.text;
    if (query.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('O campo de pesquisa está vazio.')),
      );
      return;
    }

    // Define qual URL da API será chamada
    final url = _isMakersSelected
        ? 'https://thefuturebasapp.shop/api/search_makers.php?query=$query'
        : 'https://thefuturebasapp.shop/api/search_services.php?query=$query';

    try {
      print("Enviando requisição para a URL: $url");

      final response = await http.get(Uri.parse(url));

      print("Status da resposta: ${response.statusCode}");
      print("Corpo da resposta: ${response.body}");
      print("Consulta enviada: $query");

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _searchResults = data;
        });

        if (_searchResults.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Nenhum resultado encontrado.')),
          );
        }
      } else {
        throw Exception(
            'Erro ao buscar resultados: Código ${response.statusCode}');
      }
    } catch (error) {
      print("Erro ao buscar resultados: $error");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao buscar resultados: $error')),
      );
    }
  }

  void _onItemTap(Map<String, dynamic> result) {
    if (_isMakersSelected) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MakerScreen(makerData: result),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ServicePaycheck(makerData: result),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Serviços'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Pesquisar serviços...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _search,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  height: 40,
                  child: CustomButton(
                    text: "Maker",
                    corTexto: Colors.black,
                    onPressed: () {
                      setState(() {
                        _isMakersSelected = true;
                      });
                      _search();
                    },
                    gradient: const LinearGradient(
                        colors: [Color(0xFFD9D9D9), Color(0xFFD9D9D9)]),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: CustomButton(
                    text: "Services",
                    corTexto: Colors.black,
                    onPressed: () {
                      setState(() {
                        _isMakersSelected = false;
                      });
                      _search();
                    },
                    gradient: const LinearGradient(
                        colors: [Color(0xFFD9D9D9), Color(0xFFD9D9D9)]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _searchResults.isNotEmpty
                  ? ListView.builder(
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final result = _searchResults[index];
                        if (_isMakersSelected) {
                          return InkWell(
                            onTap: () => _onItemTap(result),
                            child: ListTile(
                              title: Text(result['nome']),
                              subtitle:
                                  Text('Categorias: ${result['categorias']}'),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          );
                        } else {
                          return InkWell(
                            onTap: () => _onItemTap(result),
                            child: ListTile(
                              title: Text(result['nome']),
                              subtitle: Text(result['descricao']),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          );
                        }
                      },
                    )
                  : const Center(child: Text('Nenhum resultado encontrado')),
            ),
          ],
        ),
      ),
    );
  }
}

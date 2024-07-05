import 'package:bitlux_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BitLuxColors.primary,
      appBar: AppBar(
        title: const Text('Markets', style: TextStyle(color: Colors.white)),
        backgroundColor: BitLuxColors.primary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderRow(),
              const Divider(color: Colors.grey),
              CryptoList(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Name / Vol', style: TextStyle(color: Colors.grey)),
          Text('Last Price', style: TextStyle(color: Colors.grey)),
          Text('24h Chg%', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class CryptoList extends StatelessWidget {
  final List<CryptoData> cryptoData = [
    CryptoData('BCH', 'USDT', '24.29M', '450.4', '+1.08%'),
    CryptoData('BNB', 'USDT', '274.67M', '610.4', '+1.68%'),
    CryptoData('BTC', 'USDT', '2.55B', '67,933.80', '+0.73%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
    CryptoData('LTC', 'USDT', '36.27M', '77.97', '+0.78%'),
    CryptoData('PHB', 'BTC', '1.37', '0.00003321', '+5.23%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
    CryptoData('LTC', 'USDT', '36.27M', '77.97', '+0.78%'),
    CryptoData('PHB', 'BTC', '1.37', '0.00003321', '+5.23%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
    CryptoData('LTC', 'USDT', '36.27M', '77.97', '+0.78%'),
    CryptoData('PHB', 'BTC', '1.37', '0.00003321', '+5.23%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
    CryptoData('LTC', 'USDT', '36.27M', '77.97', '+0.78%'),
    CryptoData('BNB', 'USDT', '274.67M', '610.4', '+1.68%'),
    CryptoData('BTC', 'USDT', '2.55B', '67,933.80', '+0.73%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
    CryptoData('LTC', 'USDT', '36.27M', '77.97', '+0.78%'),
    CryptoData('PHB', 'BTC', '1.37', '0.00003321', '+5.23%'),
    CryptoData('ETH', 'USDT', '1.38B', '3,530.21', '+1.07%'),
    CryptoData('XRP', 'USDT', '162.06M', '0.4875', '+1.60%'),
  ];

  CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: cryptoData.map((data) => CryptoListItem(data)).toList(),
    );
  }
}

class CryptoData {
  final String name;
  final String pair;
  final String volume;
  final String lastPrice;
  final String change;

  CryptoData(this.name, this.pair, this.volume, this.lastPrice, this.change);
}

class CryptoListItem extends StatelessWidget {
  final CryptoData data;

  const CryptoListItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${data.name}/${data.pair}',
                  style: const TextStyle(color: Colors.white)),
              Text(data.volume, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(data.lastPrice, style: const TextStyle(color: Colors.white)),
              Text('\$${data.lastPrice}',
                  style: const TextStyle(color: Colors.grey)),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: data.change.contains('+')
                  ? BitLuxColors.buttonGreen
                  : Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              data.change,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

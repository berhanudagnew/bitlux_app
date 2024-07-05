import 'package:bitlux_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet', style: TextStyle(color: Colors.white)),
        backgroundColor: BitLuxColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTotalBalanceSection(),
            const SizedBox(height: 20),
            _buildButtons(),
            const SizedBox(height: 20),
            _buildConvertAssetsSection(),
            const SizedBox(height: 20),
            _buildBalancesSection(),
          ],
        ),
      ),
      backgroundColor: BitLuxColors.primary,
    );
  }

  Widget _buildTotalBalanceSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total Balance',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 5),
        Text(
          '91.63 USDT',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          '≈ \$91.64',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Today\'s PNL',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5),
            Text(
              '-\$0.10(-0.11%)',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
          ),
          child: const Text('Deposit'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
          ),
          child: const Text('Withdraw'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.amber,
          ),
          child: const Text('Transfer'),
        ),
      ],
    );
  }

  Widget _buildConvertAssetsSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: BitLuxColors.primary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Row(
        children: [
          Icon(Icons.autorenew, color: Colors.amber),
          SizedBox(width: 10),
          Text(
            'Convert Low-Value Assets to BNB',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalancesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Balances',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        _buildBalanceItem('USDT', 'TetherUS', '82.40442496'),
        const SizedBox(height: 20),
        _buildBalanceItem('BNB', 'BNB', '0.01498947', '9.18 USDT', '\$675.50',
            '-\$0.11(-1.14%)'),
      ],
    );
  }

  Widget _buildBalanceItem(String symbol, String name, String balance,
      [String? cost, String? value, String? pnl]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.account_balance_wallet, color: Colors.amber),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  symbol,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              balance,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            if (cost != null)
              Text(cost,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
            if (value != null)
              Text(value,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
            if (pnl != null)
              Text(pnl,
                  style: const TextStyle(fontSize: 14, color: Colors.red)),
          ],
        ),
      ],
    );
  }
}

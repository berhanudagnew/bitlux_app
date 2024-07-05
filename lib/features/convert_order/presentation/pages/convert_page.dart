import 'package:bitlux_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Convert',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: BitLuxColors.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildConversionSection(),
            const SizedBox(height: 20),
            // _buildKeypad(),
            const SizedBox(height: 20),
            _buildPreviewButton(),
          ],
        ),
      ),
      backgroundColor: BitLuxColors.primary,
    );
  }

  Widget _buildConversionSection() {
    return Column(
      children: [
        _buildConversionRow(
            'From', 'USDT', 'Available 82.40442496 USDT', '0.01 - 8000'),
        const SizedBox(height: 20),
        _buildConversionRow('To', 'IO', '', '0.0017 - 1300'),
      ],
    );
  }

  Widget _buildConversionRow(
      String label, String asset, String available, String range) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: BitLuxColors.secondary,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              if (available.isNotEmpty)
                Text(
                  available,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                asset,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                range,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          if (label == 'From')
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'MAX',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amber,
                ),
              ),
            ),
        ],
      ),
    );
  }

  List<Widget> _buildKeypadRow(List<String> keys) {
    return keys.map((key) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[800],
              minimumSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              key,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildPreviewButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: const Text(
          'Preview Conversion',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

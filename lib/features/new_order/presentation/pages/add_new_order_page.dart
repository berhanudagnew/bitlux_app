import 'package:bitlux_app/core/validators/validators.dart';
import 'package:bitlux_app/features/new_order/presentation/providers/add_new_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:bitlux_app/core/common/styles/border_radious_style.dart';
import 'package:bitlux_app/core/common/styles/divider_style.dart';
import 'package:bitlux_app/core/common/widgets/appbar/bitlux_search_app_bar.dart';
import 'package:bitlux_app/core/common/widgets/card/bitlux_round_card.dart';
import 'package:bitlux_app/core/common/widgets/radio_button/custom_radio_button.dart';
import 'package:bitlux_app/core/common/widgets/slider/slider_screen.dart';
import 'package:bitlux_app/core/common/widgets/text_field/bitlux_text_field.dart';
import 'package:bitlux_app/features/new_order/data/models/add_new_order_model.dart';
import 'package:bitlux_app/features/new_order/presentation/providers/slider_value_provider.dart';
import 'package:bitlux_app/features/skeleton/providers/bottum_bar_index_provider.dart';
import 'package:bitlux_app/features/skeleton/widgets/bitlux_bottom_nav_bar.dart';

class AddNewOrderPage extends StatefulWidget {
  final AddNewOrderModel? addNewOrderModel;

  const AddNewOrderPage({super.key, this.addNewOrderModel});

  @override
  State<AddNewOrderPage> createState() => _AddNewOrderState();
}

class _AddNewOrderState extends State<AddNewOrderPage> {
  double total = 100;
  final _formKey = GlobalKey<FormState>();
  late String streamName;
  late String orderType;
  late String orderSide;
  late String symbol;
  late int orderQuantity;
  late double orderPrice;

  @override
  void initState() {
    super.initState();
    if (widget.addNewOrderModel != null) {
      streamName = widget.addNewOrderModel!.streamName;
      orderType = widget.addNewOrderModel!.orderType;
      orderSide = widget.addNewOrderModel!.orderSide;
      symbol = widget.addNewOrderModel!.symbol;
      orderQuantity = widget.addNewOrderModel!.orderQuantity;
      orderPrice = widget.addNewOrderModel!.orderPrice;
    } else {
      streamName = 'btcusdt_1m';
      orderType = 'limit';
      orderSide = 'buy';
      symbol = 'btc';
      orderQuantity = 0;
      orderPrice = 0.0;
    }
  }

  double parseInput(String input) {
    return double.tryParse(input) ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BitLuxColors.primary,
      appBar: AppBar(
        title:
            const Text('Add new order', style: TextStyle(color: Colors.white)),
        backgroundColor: BitLuxColors.primary,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: BitLuxSearchAppBar(),
            pinned: true,
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 0, left: BitLuxSizes.sm, right: BitLuxSizes.sm),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          CustomRadioButtons(
                            options: const ['Limit', 'Market', 'Stop Limit'],
                            onSelected: (index) {
                              print('Selected index: $index');
                            },
                          ),
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          Text('Avbl: 9,500.0564107 USDT',
                              style: GoogleFonts.roboto(color: Colors.grey)),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 80,
                            child: BitLuxTextField(
                              textLabel: 'Price',
                              textSuffix: 'USDT',
                              hintColor: BitLuxColors.grey,
                              inputColor: BitLuxColors.light,
                              fillColor: BitLuxColors.secondary,
                              inputType: TextInputType.number,
                              controller: TextEditingController(),
                              validator: Validators.numberInputValidator,
                              onSaved: (value) {
                                setState(() {
                                  orderPrice = parseInput(value!);
                                  value = parseInput(value!).toString();
                                });
                                print('Saved value: $orderPrice');
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          BitLuxTextField(
                            textLabel: 'Amount',
                            textSuffix: 'BTC',
                            hintColor: BitLuxColors.grey,
                            inputColor: BitLuxColors.light,
                            fillColor: BitLuxColors.secondary,
                            inputType: TextInputType.number,
                            validator: Validators.numberInputValidator,
                            controller: TextEditingController(
                              text: (Provider.of<SliderValueProvider>(context)
                                          .totalAmount *
                                      (Provider.of<SliderValueProvider>(context)
                                              .sliderValue /
                                          10))
                                  .toStringAsFixed(2),
                            ),
                          ),
                          const SliderScreen(),
                          SizedBox(
                            height: 80,
                            child: BitLuxTextField(
                              textLabel: 'Total',
                              textSuffix: 'USDT',
                              hintColor: BitLuxColors.grey,
                              inputColor: BitLuxColors.light,
                              fillColor: BitLuxColors.secondary,
                              inputType: TextInputType.number,
                              validator: Validators.numberInputValidator,
                              controller: TextEditingController(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 80,
                            child: BitLuxTextField(
                              textLabel: 'Risk Limit',
                              textSuffix: '%',
                              hintColor: BitLuxColors.grey,
                              inputColor: BitLuxColors.light,
                              fillColor: BitLuxColors.secondary,
                              inputType: TextInputType.number,
                              validator: Validators.numberInputValidator,
                              controller: TextEditingController(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: CustomRadioButtons(
                                  options: const [
                                    '',
                                    '1s',
                                    '1m',
                                    '3m',
                                    '5m',
                                    '30m',
                                    '1h',
                                    '2h',
                                    '6h',
                                    '8h',
                                    '12h',
                                    '1D',
                                    '3D',
                                    '1W',
                                    '1M'
                                  ],
                                  onSelected: (index) {
                                    print('Selected index: $index');
                                  },
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  color: BitLuxColors.secondary,
                                  child: Text(
                                    'Time:',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: BitLuxSizes.md,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          const SizedBox(height: 10),
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          Stack(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: CustomRadioButtons(
                                  options: const ['', 'GTC', 'IOC', 'FOK'],
                                  onSelected: (index) {
                                    print('Selected index: $index');
                                  },
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  color: BitLuxColors.secondary,
                                  child: Text(
                                    'T I F ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontSize: BitLuxSizes.md,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const BitLuxDividerStyle(
                            color: BitLuxColors.primary,
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 80,
                            child: BitLuxTextField(
                              textLabel: 'Total',
                              textSuffix: 'USDT',
                              hintColor: BitLuxColors.grey,
                              inputColor: BitLuxColors.light,
                              fillColor: BitLuxColors.secondary,
                              inputType: TextInputType.number,
                              validator: Validators.numberInputValidator,
                              controller: TextEditingController(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          BitLuxRoundCard(
                            borderRadius: BitLuxBorderRadius(
                                    0, 0, BitLuxSizes.md, BitLuxSizes.md)
                                .borderRadius,
                            backgroundColor: BitLuxColors.primary,
                            padding: const EdgeInsets.all(BitLuxSizes.sm),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: GestureDetector(
                                    onTap: Provider.of<AddNewOrderProvider>(
                                                context)
                                            .isLoading
                                        ? null
                                        : () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _formKey.currentState!.save();

                                              AddNewOrderModel
                                                  addNewOrderModule =
                                                  AddNewOrderModel(
                                                symbol: 'BTCUSDT',
                                                streamName: streamName,
                                                orderType: orderType,
                                                orderSide: orderSide,
                                                orderQuantity: orderQuantity,
                                                orderPrice: orderPrice,
                                              );

                                              final error = await Provider.of<
                                                          AddNewOrderProvider>(
                                                      context,
                                                      listen: false)
                                                  .createOrder(
                                                      addNewOrderModule,
                                                      context);

                                              if (error != null) {
                                                Navigator.of(context).pushNamed(
                                                    '/error',
                                                    arguments: error);
                                              } else {
                                                print(
                                                    'Another Button 1 Pressed $orderPrice');
                                                Navigator.pop(context);
                                              }
                                            }
                                          },
                                    child: BitLuxRoundCard(
                                      borderRadius: BitLuxBorderRadius(
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm)
                                          .borderRadius,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: BitLuxSizes.sm),
                                      backgroundColor: BitLuxColors.buttonGreen,
                                      padding:
                                          const EdgeInsets.all(BitLuxSizes.xs),
                                      child: Text(
                                        'Buy',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: BitLuxColors.light,
                                          fontSize: BitLuxSizes.fontSizeMd,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: BitLuxSizes.sm),
                                Expanded(
                                  flex: 2,
                                  child: GestureDetector(
                                    onTap: () async {},
                                    child: BitLuxRoundCard(
                                      borderRadius: BitLuxBorderRadius(
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm,
                                              BitLuxSizes.sm)
                                          .borderRadius,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: BitLuxSizes.sm),
                                      backgroundColor: BitLuxColors.buttonRed,
                                      padding:
                                          const EdgeInsets.all(BitLuxSizes.xs),
                                      child: Text(
                                        'SELL',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: BitLuxColors.light,
                                          fontSize: BitLuxSizes.fontSizeMd,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  if (Provider.of<AddNewOrderProvider>(context).isLoading)
                    const Center(
                      child: CircularProgressIndicator(
                        color: BitLuxColors.buttonGold,
                        backgroundColor: BitLuxColors.secondary,
                      ),
                    ),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
      bottomNavigationBar: BitLuxBottomNavBar(
        pageIndex: Provider.of<BottumBarIndexProvider>(context).selectedPage,
        onTap: (index) {
          Provider.of<BottumBarIndexProvider>(context, listen: false)
              .changePage(index);
          Navigator.of(context).pop(); // Close the add order screen
        },
      ),
    );
  }
}

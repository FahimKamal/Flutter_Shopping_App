import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/functions.dart';
import 'package:shopping_app/models/Product_models.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                showMessage(context: context, message: "Added to favorite list.");
              },
              icon: SvgPicture.asset(
                'assets/icons/Heart.svg',
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            widget.product.imageLink!,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(defaultPadding * 3),
                  topRight: Radius.circular(defaultPadding * 3),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.product.name!,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Text(
                          widget.product.weight!,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        "Price: "+widget.product.price!
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                          widget.product.description!
                      ),
                    ),
                    const SizedBox(height: defaultPadding * 1.5),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: thirdColor,
                              shape: const StadiumBorder()
                          ),
                          onPressed: () {
                            showMessage(context: context, message: 'Product is added to cart.');
                          },
                          child: const Text('Add to Cart'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Product {
  const Product({required this.name});

  final String name;
}

typedef CartChangedCallback = void Function(Product product, bool inCart);

class ShoppingListItem extends StatefulWidget {
  const ShoppingListItem({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
    Key? key,
  }) : super(key: key);

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  @override
  _ShoppingListItemState createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  bool _inCart = false;

  @override
  void initState() {
    super.initState();
    _inCart = widget.inCart;
  }

  Color _getColor(BuildContext context) {
    return _inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (!_inCart) return null;

    return const TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          _inCart = !_inCart;
        });
        widget.onCartChanged(widget.product, _inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(widget.product.name[0]),
      ),
      title: Text(
        widget.product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShoppingListItem(
            product: const Product(name: 'Chips'),
            inCart: false,
            onCartChanged: (product, inCart) {
              // Đây là nơi bạn có thể xử lý sự kiện khi sản phẩm thay đổi trạng thái inCart.
              print('Sản phẩm ${product.name} đã được thêm vào giỏ hàng: $inCart');
            },
          ),
        ),
      ),
    ),
  );
}

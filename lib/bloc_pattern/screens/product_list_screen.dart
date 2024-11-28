import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc_pattern/blocks/cart_bloc.dart';
import 'package:flutter_application_1/bloc_pattern/blocks/product_block.dart';
import 'package:flutter_application_1/bloc_pattern/models/cart.dart';

class ProductListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alışveriş Sistemi'),
        
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: ()=>Navigator.pushNamed(context,'/cart'), icon:Icon(Icons.shopping_cart))
        ],
        
          
          ),
           body: buildProductList(),

    );
          
        

        
      
    
  }
  
  buildProductList() {
    return StreamBuilder(
      initialData:productBloc.getAll() ,
      stream: productBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length>0? buildProductListItems(snapshot):Center(child: Text('Yükleniyor....'),);
      }, 
    );


  }
  
  buildProductListItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      
      itemBuilder: (BuildContext context ,index){
        final list=snapshot.data;
        return ListTile(
          title: Text(list[index].name),
          subtitle: Text(list[index].price.toString()),
          trailing: IconButton(onPressed:(){cartBloc.addToCart(Cart(list[index],1));}, icon:Icon(Icons.add_shopping_cart)),
        );
      });
      
  }
  
 
  }
  

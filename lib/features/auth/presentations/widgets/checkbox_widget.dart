import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class CheckBoxWidget extends StatefulWidget {

  final bool isSelected;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;

  const CheckBoxWidget({Key? key,
    required this.isSelected,
     this.selectedColor,
     this.selectedIconColor,
     this.size,
     this.iconSize,
  }) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isSelected = false;
  @override
  void initState() {
    super.initState();
    _isSelected= widget.isSelected ?? false;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Container(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  _isSelected  = ! _isSelected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn,
                decoration: BoxDecoration(
                       color: grey4,
                  borderRadius: BorderRadius.circular(8),
                  border: _isSelected ? null:  Border.all(
                    color: grey6,
                    width: 2.0,
                  ),

                ),
                width:24,
                height:24,
                child: _isSelected ? Icon(Icons.check,color:green1,size:20,)
                :null
              )

            ),
          ),
          SizedBox(width: 6,),
          Text("Эслаб қолиш",style: TextStyle(color: grey2,fontSize: 14,fontWeight: FontWeight.w600),)
          
        ],
      ),
    );
  }
}

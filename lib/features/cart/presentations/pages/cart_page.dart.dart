import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/bold_text.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/bottomNavigationBar_container_widget.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/circle_and_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/comment_container.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/flexibleSpace_widget.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/icon_amd_titleText_widgte.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/location_widgets.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/logo_and_text_widgets.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/prefred_top_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/row_icons_widgets.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/row_two_container_widgets.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_icon_widgets.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //image
          SliverAppBar(
            toolbarHeight: 80,
            title: RowIconWidget(),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              // child: PreferredSizeWidget(),
               child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child:TitleTextAndIconWidget(),
                ),
            ),
            pinned: true,
            backgroundColor: white,
            expandedHeight: 290,
            flexibleSpace: FlexibleSpaceWidget(),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: SmallText(text: 'Сабзавотлар', color: white,size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: BoldText(text:'Ўзбекистоннинг олий навли  барра анори',size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: CircleAndTextWidget(text: 'Barlos agro', image: AppImage.company_image2)),
                Container(
                    height: 1,
                    color: grey3,
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 16,left: 16),
                    child: BoldText(text:'Махсулотлар xакида ',size: 16)),
                Container(
                    margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                    child: SmallText(text:'Ўзбекистон Анорчилар ассоциасиясининг асосий мақсади– қишлоқ хўжалиги экинларини етиштиришда илғор тажрибаларни оммалаштириш, маҳсулотларни стандартлаштириш ва сертификасиялаш, истиқболли навларни яратиш, жаҳон бозори конъюнктурасини ўрганиш, маҳсулотларнинг тижорат намуналарини яратиш, уларни брендлаш, халқаро кўргазмаларда иштирок этиш, ишлаб чиқарувчиларни мамлакатимизда рағбатлантириш ва қўллаб-қувватлаш. ташқи бозорлар, маҳсулотларни қайта ишлаш бўйича инвестисия лойиҳаларини ўрганишдан иборатдир.',size: 14, color: Color(0xFF4A4A4A),)),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16,bottom: 10),
                  child: LogoAndTextWidget(text: '5 125 000 сум', logo: AppImage.moneys_image),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                  child: RowTwoContainer(leftText1: 'Мавжуд', leftText2: "7 тонна",rightText1: "Кутилмоқда: ",rightText2: "18 тонна",image: AppImage.tick_circle,rightText3:"(18.01.23)",),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 8,left: 16),
                  child: LocationWidget(image1: AppImage.map_image,text: 'Тошкент ш. Бектемир т. Бухоро к. 42-уй'),
                ),
                Container(
                  margin: EdgeInsets.only(right: 16, top: 32,left: 16),
                  child: BoldText(text: 'Изоҳлар',),
                ),
                Container(
                  height: 500,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                      CommentContainer(text1: 'Кўринишидан яхши махсулотлга ўхшайди, келаси йил олиб экиб кўраман', text2: 'Хасбулла Магомедов', text3: '23 Январ, 2022', image1: AppImage.circle_avatar1,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarContainerWidget(),

    );
  }
}


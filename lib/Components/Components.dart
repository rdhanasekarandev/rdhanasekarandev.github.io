import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:karkai_web/app/app_localizations.dart';
import 'package:karkai_web/resources/app_colors.dart';

class InputField extends StatefulWidget {
  final String text;
  final TextInputType inputType;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry padding;
  final String fontfamily;
  final bool isObscured;
  final String initialVal;
  final double radius;
  final EdgeInsetsGeometry contentPadding;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry margin;
  final TextEditingController controller;
  final double width;
  final Color hintColor;
  final bool isShadow;
  final bool isBothEffect;
  final double height;

  InputField(
      {@required this.text,
      this.inputType,
      this.color,
      this.fontSize,
      this.hintColor,
      this.fontWeight,
      this.padding,
      this.fontfamily,
      this.isObscured,
      this.alignment,
      this.initialVal,
      this.radius,
      this.margin,
      this.contentPadding,
      @required this.controller,
      @required this.width,
      this.isShadow,
      this.isBothEffect,
      this.height});
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: widget.alignment,
      height: widget.height,
      color: AppColors.WHITE,
      padding: widget.padding != null ? widget.padding : EdgeInsets.all(0),
      margin: widget.margin != null ? widget.margin : EdgeInsets.all(0),
      child: TextField(
        obscureText: widget.isObscured != null ? widget.isObscured : false,
        controller: widget.controller..text = widget.initialVal,
        style: TextStyle(
            fontFamily: widget.fontfamily,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            color: widget.color),
        keyboardType: widget.inputType,
        decoration: widget.isShadow != null && widget.isShadow
            ? InputDecoration(
                hintText: AppLocalizations.of(context).translate(widget.text),
                contentPadding: widget.contentPadding ??
                    EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintStyle: TextStyle(
                    fontFamily: widget.fontfamily,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    color: widget.hintColor),
                border: InputBorder.none)
            : InputDecoration(
                hintText: AppLocalizations.of(context).translate(widget.text) ??
                    widget.text,
                contentPadding: widget.contentPadding ??
                    EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                hintStyle: TextStyle(
                    fontFamily: widget.fontfamily,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    color: widget.hintColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius ?? 0),
                    borderSide: new BorderSide(color: Colors.white, width: 0)),
              ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius ?? 0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            color: Color(0x19000000),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  final String text;
  final TextInputType inputType;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry padding;
  final String fontfamily;
  final bool isObscured;
  final String initialVal;
  final double radius;
  final EdgeInsetsGeometry contentPadding;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry margin;
  final TextEditingController controller;
  final double width;
  final Color hintColor;
  final Widget suffixIcon;
  final bool isShadow;
  final Widget prefixIcon;
  final bool isBothEffect;
  final double height;

  SearchField(
      {@required this.text,
      this.inputType,
      this.color,
      this.fontSize,
      this.hintColor,
      this.prefixIcon,
      this.suffixIcon,
      this.fontWeight,
      this.padding,
      this.fontfamily,
      this.isObscured,
      this.alignment,
      this.initialVal,
      this.radius,
      this.margin,
      this.contentPadding,
      @required this.controller,
      @required this.width,
      this.isShadow,
      this.isBothEffect,
      this.height});
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      alignment: widget.alignment,
      height: widget.height,
      padding: widget.padding != null ? widget.padding : EdgeInsets.all(0),
      margin: widget.margin != null ? widget.margin : EdgeInsets.all(0),
      child: TextField(
        obscureText: widget.isObscured != null ? widget.isObscured : false,
        controller: widget.controller..text = widget.initialVal,
        style: TextStyle(
            fontFamily: widget.fontfamily,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            color: widget.color),
        keyboardType: widget.inputType,
        decoration: widget.isShadow != null && widget.isShadow
            ? InputDecoration(
                suffixIcon: widget.suffixIcon ??
                    SizedBox(
                      width: 0,
                      height: 0,
                    ),
                hintText: AppLocalizations.of(context).translate(widget.text),
                contentPadding: widget.contentPadding ??
                    EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                hintStyle: TextStyle(
                    fontFamily: widget.fontfamily,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    color: widget.hintColor),
                border: InputBorder.none)
            : InputDecoration(
                suffixIcon: widget.suffixIcon ??
                    SizedBox(
                      width: 0,
                      height: 0,
                    ),
                hintText: AppLocalizations.of(context).translate(widget.text) ??
                    widget.text,
                contentPadding: widget.contentPadding ??
                    EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                hintStyle: TextStyle(
                    fontFamily: widget.fontfamily,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    color: widget.hintColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius ?? 0),
                    borderSide: new BorderSide(color: Colors.white, width: 0)),
              ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius ?? 0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            color: Color(0x19000000),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontfamily;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final double width;
  final double letterSpacing;
  final double height;
  Content(
      {@required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.margin,
      this.padding,
      this.letterSpacing,
      this.alignment,
      this.fontfamily,
      this.width,
      this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment != null ? alignment : Alignment.center,
      child: Text(
        AppLocalizations.of(context).translate(text) ?? text,
        style: TextStyle(
            letterSpacing: letterSpacing,
            fontFamily: fontfamily,
            fontSize: fontSize,
            decoration: TextDecoration.none,
            fontWeight: fontWeight,
            color: color),
      ),
    );
  }
}

class PrimaryButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final Color bgColor;
  final Color borderColor;
  final Color txtColor;
  final double fontSize;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final FontWeight fontWeight;
  final bool isShadow;
  final String fontfamily;
  final double radius;
  final VoidCallback onPressed;

  PrimaryButton(
      {@required this.text,
      @required this.width,
      this.height,
      this.bgColor,
      this.borderColor,
      this.txtColor,
      this.fontSize,
      this.margin,
      this.padding,
      this.alignment,
      this.fontWeight,
      this.isShadow,
      this.fontfamily,
      this.radius,
      @required this.onPressed});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        margin: widget.margin,
        alignment: widget.alignment,
        padding: widget.padding,
        child: FractionallySizedBox(
          widthFactor: 1,
          child: TextButton(
            child: Text(
              AppLocalizations.of(context).translate(widget.text) ??
                  widget.text,
              style: TextStyle(
                  fontFamily: widget.fontfamily,
                  fontSize: widget.fontSize,
                  fontWeight: widget.fontWeight,
                  color: widget.txtColor),
            ),
            style: ButtonStyle(),
            onPressed: widget.onPressed,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(widget.radius != null ? widget.radius : 2),
          color: widget.bgColor != null ? widget.bgColor : Colors.transparent,
          border: Border.all(
              color: widget.borderColor != null
                  ? widget.borderColor
                  : Colors.transparent),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: widget.isShadow != null && widget.isShadow
                  ? Color(0x19000000)
                  : Colors.transparent,
            ),
          ],
        ));
  }
}

class IconTextButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final Color bgColor;
  final Color borderColor;
  final Color txtColor;
  final double fontSize;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final FontWeight fontWeight;
  final bool isShadow;
  final String fontfamily;
  final bool radius;
  final VoidCallback onPressed;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final double iconSize;
  final Color iconColor;

  IconTextButton(
      {@required this.text,
      @required this.width,
      this.height,
      this.bgColor,
      this.borderColor,
      this.txtColor,
      this.fontSize,
      this.iconColor,
      this.iconSize,
      this.prefixIcon,
      this.suffixIcon,
      this.margin,
      this.padding,
      this.alignment,
      this.fontWeight,
      this.isShadow,
      this.fontfamily,
      this.radius,
      @required this.onPressed});
  @override
  _IconButtonState createState() => _IconButtonState();
}

class _IconButtonState extends State<IconTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        margin: widget.margin,
        alignment: widget.alignment,
        padding: widget.padding,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.prefixIcon != null
                  ? Icon(
                      widget.prefixIcon,
                      color: widget.iconColor,
                      size: widget.iconSize != null ? widget.iconSize : 20,
                    )
                  : SizedBox(),
              Container(
                margin: EdgeInsets.only(
                    left: widget.prefixIcon != null ? 5 : 0,
                    right: widget.suffixIcon != null ? 5 : 0),
                child: Text(
                  widget.text,
                  style: TextStyle(
                      fontFamily: widget.fontfamily,
                      fontSize: widget.fontSize,
                      fontWeight: widget.fontWeight,
                      color: widget.txtColor),
                ),
              ),
              widget.suffixIcon != null
                  ? Icon(
                      widget.suffixIcon,
                      color: widget.iconColor,
                    )
                  : SizedBox(),
            ],
          ),
          style: ButtonStyle(),
          onPressed: widget.onPressed,
        ),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(widget.radius != null ? widget.radius : 2),
          color: widget.bgColor != null ? widget.bgColor : Colors.transparent,
          border: Border.all(
              color: widget.borderColor != null
                  ? widget.borderColor
                  : Colors.transparent),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: widget.isShadow != null && widget.isShadow
                  ? Color(0x19000000)
                  : Colors.transparent,
            ),
          ],
        ));
  }
}

class Line extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  final EdgeInsetsGeometry margin;

  Line({
    @required this.width,
    @required this.height,
    this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height,
      color: color != null ? color : Color(0xFF777777),
    );
  }
}

class FocusedView extends StatelessWidget {
  final Widget child;

  FocusedView({this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      behavior: HitTestBehavior.translucent,
      child: child,
    );
  }
}

class ImageContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double radius;
  final String url;
  final double width;
  final double height;
  final String asset;
  final bool isShadow;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  ImageContainer(
      {this.child,
      this.bgColor,
      this.asset,
      this.width,
      this.height,
      this.url,
      this.borderColor,
      this.radius,
      this.isShadow,
      this.margin,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(1), BlendMode.dstATop),
            image: url != null ? NetworkImage(url) : AssetImage(asset),
            fit: BoxFit.cover,
          ),
        ));
  }
}

class BorderContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double radius;
  final bool isShadow;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  BorderContainer(
      {this.child,
      this.bgColor,
      this.borderColor,
      this.radius,
      this.isShadow,
      this.margin,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
            child: child,
            margin: margin,
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius != null ? radius : 2),
              color: bgColor != null
                  ? bgColor
                  : isShadow != null && isShadow
                      ? Colors.white
                      : Colors.transparent,
              border: Border.all(
                  color:
                      borderColor != null ? borderColor : Colors.transparent),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  color: isShadow != null && isShadow
                      ? Color(0x19000000)
                      : Colors.transparent,
                ),
              ],
            ))
      ],
    );
  }
}

class ImageView extends StatelessWidget {
  final String url;
  final String asset;
  final double width;
  final double height;
  final bool isShadow;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final Color bgColor;

  ImageView(
      {this.url,
      this.asset,
      @required this.width,
      this.height,
      this.isShadow,
      this.margin,
      this.padding,
      this.alignment,
      this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: padding,
        width: width,
        child: Image(
          image: url != null ? NetworkImage(url) : AssetImage(asset),
          height: height,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: isShadow != null && isShadow
                  ? Color(0x19000000)
                  : Colors.transparent,
            ),
          ],
        ));
  }
}

class CircularImageView extends StatelessWidget {
  String url;
  String asset;
  double width;
  double height;
  bool isShadow;
  EdgeInsetsGeometry margin;
  EdgeInsetsGeometry padding;
  AlignmentGeometry alignment;
  Color bgColor;
  double radius;
  CircularImageView({
    this.url,
    this.asset,
    this.width,
    this.isShadow,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.bgColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: padding,
        color: bgColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image(
            image: url != null ? NetworkImage(url) : Image.asset(asset),
            width: width,
            height: height,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius != null ? radius : 2),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 10,
              color: isShadow != null && isShadow
                  ? Color(0x19000000)
                  : Colors.transparent,
            ),
          ],
        ));
  }
}

class HoverButton extends StatefulWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontfamily;
  final Color txtColor;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color borderColor;
  final bool isShadow;
  final double radius;
  final Color hoverColor;

  HoverButton(
      {this.alignment,
      this.bgColor,
      this.borderColor,
      this.txtColor,
      this.fontfamily,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.hoverColor,
      this.isShadow,
      this.margin,
      this.onPressed,
      this.padding,
      this.radius,
      this.text,
      this.width});

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  Color txtC;

  @override
  void initState() {
    txtC = widget.txtColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) {
          setState(() {
            txtC = widget.hoverColor;
          });
        },
        onExit: (e) {
          setState(() {
            txtC = widget.txtColor;
          });
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onPressed,
          child: Container(
              width: widget.width,
              height: widget.height,
              margin: widget.margin,
              alignment: widget.alignment,
              padding: widget.padding,
              child: Text(
                widget.text,
                style: TextStyle(
                    fontFamily: widget.fontfamily,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    color: txtC),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    widget.radius != null ? widget.radius : 2),
                color: widget.bgColor != null
                    ? widget.bgColor
                    : Colors.transparent,
                border: Border.all(
                    color: widget.borderColor != null
                        ? widget.borderColor
                        : Colors.transparent),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 10,
                    color: widget.isShadow != null && widget.isShadow
                        ? Color(0x19000000)
                        : Colors.transparent,
                  ),
                ],
              )),
        ));
  }
}

class DropdownWidget extends StatefulWidget {
  final List<String> items;
  final ValueChanged<String> itemCallBack;
  final String currentItem;
  final String hintText;
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color color;
  final double iconSize;

  DropdownWidget({
    this.items,
    this.height,
    this.color,
    this.fontFamily,
    this.fontWeight,
    this.fontSize,
    this.iconSize,
    this.itemCallBack,
    this.currentItem,
    this.width,
    this.hintText,
  });

  @override
  State<StatefulWidget> createState() => _DropdownState(currentItem);
}

class _DropdownState extends State<DropdownWidget> {
  List<DropdownMenuItem<String>> dropDownItems = [];
  String currentItem;

  _DropdownState(this.currentItem);

  @override
  void initState() {
    super.initState();
    for (String item in widget.items) {
      dropDownItems.add(DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ));
    }
  }

  @override
  void didUpdateWidget(DropdownWidget oldWidget) {
    if (this.currentItem != widget.currentItem) {
      setState(() {
        this.currentItem = widget.currentItem;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      margin: EdgeInsets.only(top: 10),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            color: Color(0x19000000),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: Icon(
            Icons.arrow_downward,
            size: widget.iconSize != null ? widget.iconSize : 10,
          ),
          value: currentItem,
          style: TextStyle(
              fontSize: widget.fontSize != null ? widget.fontSize : 14,
              fontWeight: widget.fontWeight,
              fontFamily: widget.fontFamily,
              color: widget.color),
          isExpanded: true,
          items: dropDownItems,
          onChanged: (selectedItem) => setState(() {
            currentItem = selectedItem;
            widget.itemCallBack(currentItem);
          }),
          hint: Container(
            child: Text(widget.hintText,
                style: TextStyle(
                    fontSize: widget.fontSize != null ? widget.fontSize : 14,
                    fontWeight: widget.fontWeight,
                    fontFamily: widget.fontFamily,
                    color: widget.color)),
          ),
        ),
      ),
    );
  }
}

class TwoWaveClipper extends StatelessWidget {
  final Widget child;
  final Color waveColor;
  final Color bgColor;
  final double height;

  TwoWaveClipper(
      {@required this.child, this.waveColor, this.bgColor, this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: bgColor ?? AppColors.WHITE,
        ),
        ClipPath(
            clipper: WaveClipper(),
            child: Container(
              color: waveColor ?? AppColors.PRIMARY_COLOR_DARK,
              height: height,
            )),
        child,
      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 30.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 55);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}

import 'package:buttonclick/button.dart';
import 'package:buttonclick/color.dart';
import 'package:buttonclick/pop_up.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PathWay extends StatefulWidget 
{
	const PathWay({ Key? key }) : super(key: key);

	@override
	State<PathWay> createState() => _PathWayState();
}

class _PathWayState extends State<PathWay> 
{
	CustomButton _customButton = new CustomButton();
	final PopupBox _popupBox = PopupBox();
	
	bool case1 = false;
	bool case2 = false;
	bool case3 = false;
	bool case4 = false;
	bool case5 = false;
	bool case6 = false;
	bool case7 = false;
	bool case8 = false;
	bool case9 = false;
	bool case10 = false;
	bool case11 = false;
	bool case12 = false;
	bool case13 = false;
	bool case14 = false;
	bool case15 = false;
	bool case16 = false;
	bool left = false;
	bool right = false;

	@override
  	Widget build(BuildContext context) 
	{
		var height = MediaQuery.of(context).size.height;	
		var width = MediaQuery.of(context).size.width;

		return Scaffold
		(
			body: SingleChildScrollView
			(
				padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
				child: Center
				(
					child: Column
					(
						children: 
						[
							CustomPaint(painter: LineDashedPainter(case2 ? CustomColors.blueBorderActive : CustomColors.grey, 10, (height / 200), 10, height / 1.5)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									CustomPaint(painter: LineDashedPainter(case1 ? Colors.blue : CustomColors.grey, -(width / 6), 0, -(width / 6), height * .66)),
									CustomPaint(painter: LineDashedPainter(case1 ? Colors.blue : CustomColors.grey, width / 6 , 0, -(width / 6) , 0)),
									Column
									(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: 
										[
											binaryText("Yes", width),
											const SizedBox(height: 5),
											GestureDetector
											(
												child: Container
												(
													margin: EdgeInsets.only(right: 10, bottom: (height / 50)),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color: case1 ?  CustomColors.blue : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case1? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													print("1");
													setState(()
													{
														left = true;
														case1 = true;
														case2 = false;
														case3 = false;
														case4 = false;
														case5 = false;
														case6 = false;
														case7 = false;
														case8 = false;
														case9 = false;
														case10 = false;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = false;
														left = true;
														right = false;
													});
												},
											)
										],
									),
									Center(child: _customButton.button(context, "Warning Signs?", case1 == true ? case1 : case2, context))
								],
							),
							// connector(width, case2, "case2", "Yes"),
							// connector(width, isTrue, value, text),
							GestureDetector
							(
								child: Container
								(
									// color: Colors.red,
									margin:  EdgeInsets.only(top: 10),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Yes", style: TextStyle(fontSize: 8),),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case2 ? CustomColors.blueActive : Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case2 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case2 = true;
									left = false;
									right = false;

									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							button2("Review regulations and legal risks", width, case2, "1"),
							const SizedBox(height: 40),
							button2("Discuss driving with senior", width, case2, "2"),
							const SizedBox(height: 40),
							button2("Address any contributing factors", width, case2, "3"),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case4 ? CustomColors.blueBorderActive : CustomColors.grey, 10, height / 20, 10, height  / 2)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									CustomPaint(painter: LineDashedPainter(case1 || case3 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 6), 0, -(width / 6), height * .38)),
									CustomPaint(painter: LineDashedPainter(case3 ? CustomColors.blueBorderActive : CustomColors.grey, width / 6 , 0, -(width / 6) , 0)),
									Column
									(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: 
										[
											binaryText("No", width),
											const SizedBox(height: 5),
											GestureDetector
											(
												child: Container
												(
													margin: EdgeInsets.only(right: 10, bottom: (height / 50)),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case3 ?  CustomColors.blue : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case3 ?  CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													print("3");
													setState(()
													{
														case1 = false;
														case2 = true;
														case3 = true;
														case4 = false;
														case5 = false;
														case6 = false;
														case7 = false;
														case8 = false;
														case9 = false;
														case10 = false;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = false;
														left = true;
														right = false;
													});
												},
											)
										],
									),
									Center(child: _customButton.button(context, "Concern persits?", case2, context),)
								],
							),
							GestureDetector
							(
								child: Container
								(
									margin:  EdgeInsets.only(top: 10),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Yes", style: TextStyle(fontSize: 8),),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case4 ? CustomColors.blueActive : Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case4 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case2 = true;
									case4 = true;
									left = false;
									right = false;


									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							button2("Modify Driving Habits", width, case4, "4"),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case6 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 85), 10, height / 2)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 6), 0, -(width / 6), height * .58)),
									CustomPaint(painter: LineDashedPainter(case5 ? CustomColors.blueBorderActive : CustomColors.grey, width / 6 , 0, -(width / 6) , 0)),
									Column
									(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: 
										[
											binaryText("No", width),
											const SizedBox(height: 5),
											GestureDetector
											(
												child: Container
												(
													margin: EdgeInsets.only(right: 10, bottom: (height / 50)),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color : case5 ? CustomColors.blueActive : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case5 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													print("5");
													setState(()
													{
														case1 = false;
														case2 = true;
														case3 = false;
														case4 = true;
														case5 = true;
														case6 = false;
														case7 = false;
														case8 = false;
														case9 = false;
														case10 = false;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = false;
														left = true;
														right = false;

													});
												}
											)
										],
									),
									Center(child: _customButton.button(context, "Concern persits?", case5 ? case5 : case6, context))
								],
							),
							// SizedBox(height: 40),
							connector(width, case6, "case6", "Yes"),
							const SizedBox(height: 40),
							button2("Review Approaches", width, case6, "6"),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case8 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, height  / 4)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									button2("Discuss driving risks with seniors", width, case6, "6"),
									CustomPaint(painter: LineDashedPainter(case11 ? CustomColors.blueBorderActive : CustomColors.grey, width / 3.9, 0, 0, 0)),
									GestureDetector
									(
										child: Column
										(
											children: 
											[
												const Padding(padding: EdgeInsets.only(left: 10, bottom: 10), child:  Text("Agrees to stop", style:  TextStyle(fontSize: 8),)),
												Container
												(
													margin: const EdgeInsets.only(left: 10, bottom: 20),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case11 ? CustomColors.blue : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case11 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
											],
										),
										onTap: ()
										{
											setState(()
											{
												case1 = false;
												case5 = false;
												case4 = true;
												case2 = true;
												case6 = true;
												case7 = false;
												case8 = false;
												case9 = false;
												case10 = false;
												case11 = true;
												case12 = false;
												case13 = false;
												case14 = false;
												case15 = false;
												case16 = false;
												right = true;
												left = false;

											});
										}
									),
									CustomPaint(painter: LineDashedPainter(case11 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 9.3, 0, width / 9.3, height * 0.22)),
								],
							),
							GestureDetector
							(
								child: Container
								(
									margin:  EdgeInsets.only(top: 10, right: 50),
									width: 200,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Continues to drive", style: TextStyle(fontSize: 8)),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case8 ? CustomColors.blueActive :  Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case8 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case2 = true;
									case4 = true;
									case6 = true;
									case8 = true;
									left = false;
									right = false;

									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case10 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, height / 60, 10, height * 0.23)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 || case7 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 14), 0, -(width / 14), height * .25)),
									// CustomPaint(painter: LineDashedPainter(case7 ? CustomColors.blueBorderActive : CustomColors.grey, width / 10 , 0, -(width / 19) , 0)),
									CustomPaint(painter: LineDashedPainter(case7 ? CustomColors.blueBorderActive : CustomColors.grey, width / 10 , 0, -(width / 14) , 0)),

									Column
									(
										children: 
										[
											const Padding(padding: EdgeInsets.only(right: 15), child: Text("Pass", style: TextStyle(fontSize: 8),)),
											const SizedBox(height: 5),
											GestureDetector
											(
												child: Container
												(
													margin: EdgeInsets.only(right: 1, bottom: (height / 50)),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case7 ? CustomColors.blueActive : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case7 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													setState(()
													{
														case1 = false;
														case2 = true;
														case3 = false;
														case4 = true;
														case5 = false;
														case6 = true;
														case7 = true;
														case8 = true;
														case9 = false;
														case10 = false;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = false;
														left = true;
														right = false;
													});
												}
											)
										],
									),									
									button2("Conduct informal driving assessment",  width, case8, "7"),
									CustomPaint(painter: LineDashedPainter(case13 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4.5, 0, 0, 0)),
									Column
									(
										children: 
										[
											Container
											(
												margin: const EdgeInsets.only(left: 10, bottom: 5),
												// width: 65,
												height: 10, child: Text("Agrees  to  stop", style: TextStyle(fontSize: 8),)),
											GestureDetector
											(
												child: Container
												(
													margin: const EdgeInsets.only(left: 30, bottom: 18),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case13 ? CustomColors.blueActive : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case13 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													setState(()
													{
														case1 = false;
														case2 = true;
														case3 = false;
														case4 = true;
														case5 = false;
														case6 = true;
														case7 = false;
														case8 = true;
														case9 = false;
														case10 = false;
														case11 = false;
														case12 = false;
														case13 = true;
														case14 = false;
														case15 = false;
														case16 = false;
														right = true;
														left = false;
													});
												}
											)
										]
									),
									CustomPaint(painter: LineDashedPainter(case11 || case13 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 16, 0, width / 16, height * 0.22))
								]
							),
							GestureDetector
							(
								child: Container
								(
									margin:  EdgeInsets.only(top: 10, right: 38),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Refuses to fail", style: TextStyle(fontSize: 8)),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case10 ? CustomColors.blueActive :  Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case10 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case4 = true;
									case6 = true;
									case8 = true;
									case10 = true;
									left = false;
									right = false;
									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case12 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, height * 0.25)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 || case7 || case9 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 14), 0, -(width / 14), height * 0.45)),
									// CustomPaint(painter: LineDashedPainter(case9 ? CustomColors.blueBorderActive : CustomColors.grey, width / 11 , 0, -(width / 17) , 0)),
									CustomPaint(painter: LineDashedPainter(case9 ? CustomColors.blueBorderActive : CustomColors.grey, width / 10 , 0, -(width / 14) , 0)),
									Column
									(
										children: 
										[
											const Padding(padding: EdgeInsets.only(right: 15), child: Text("Pass", style: TextStyle(fontSize: 8),)),
											const SizedBox(height: 5),
											GestureDetector
											(
												child: Container
												(
													margin: EdgeInsets.only(right: 1, bottom: (height / 54)),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case9 ? CustomColors.blueActive :Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case9 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													setState(()
													{
														case1 = false;
														case2 = true;
														case3 = false;
														case4 = true;
														case5 = false;
														case6 = true;
														case7 = false;
														case8 = true;
														case9 = true;
														case10 = true;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = false;
														left = true;
														right = false;
													});
												}
											)
										],
									),
									button2("Arrange formal driving assessment", width, case10, "8"),
									// CustomPaint(painter: LineDashedPainter( case15 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4.2, 0, 0, 0)),
									CustomPaint(painter: LineDashedPainter(case15 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4.6, 0, 0, 0)),
									Column
									(
										children: 
										[
											const Padding(padding: EdgeInsets.only(left: 10, bottom: 10), child: Text("Agrees  to  stop", style: TextStyle(fontSize: 8),)),
											GestureDetector
											(
												child: Container
												(
													margin: const EdgeInsets.only(left: 10, bottom: 20),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color :case15 ? CustomColors.blueActive :Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case15 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													setState(()
													{
														case1 = false;
														case5 = false;
														case4 = true;
														case2 = true;
														case6 = true;
														case7 = false;
														case8 = true;
														case9 = false;
														case10 = true;
														case11 = false;
														case12 = false;
														case13 = false;
														case14 = false;
														case15 = true;
														case16 = false;
														right = true;
														left = false;
													});
												}
											)
										],
									),
									CustomPaint(painter: LineDashedPainter(case11 || case13 || case15 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 16, 0, width / 16, height * 0.23))
								],
							),
							// SizedBox(height: 40),
							GestureDetector
							(
								child: Container
								(
									margin:  EdgeInsets.only(top: 10, right: 37),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Refuses to fail", style: TextStyle(fontSize: 8),),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case12 ? CustomColors.blueActive :  Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case12 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case2 = true;
									case4 = true;
									case6 = true;
									case8 = true;
									case10 = true;
									case12 = true;
									left = false;
									right = false;
									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							CustomPaint(painter: LineDashedPainter(case14 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, height * 0.22)),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.center,
								children: 
								[
									button2("Formal DMV process", width, case12, "9"),
									CustomPaint(painter: LineDashedPainter(case16 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 3.9, 0, 0, 0)),
									Column
									(
										children: 
										[
											const Padding(padding: EdgeInsets.only(left: 10, bottom: 10), child: Text("Agrees  to  stop", style: TextStyle(fontSize: 8),)),
											GestureDetector
											(
												child: Container
												(
													margin: const EdgeInsets.only(left: 10, bottom: 20),
													width: 15,
													height: 15,
													decoration: BoxDecoration
													(
														color : case16 ? CustomColors.blueActive : Colors.white,
														borderRadius: BorderRadius.circular(15),
														border: Border.all
														(
															width: 2,
															color: case16 ? CustomColors.blueBorderActive : CustomColors.grey,
															style: BorderStyle.solid,
														),
													),
												),
												onTap: ()
												{
													setState(()
													{
														case1 = false;
														case5 = false;
														case4 = true;
														case2 = true;
														case6 = true;
														case7 = false;
														case8 = true;
														case9 = false;
														case10 = true;
														case11 = false;
														case12 = true;
														case13 = false;
														case14 = false;
														case15 = false;
														case16 = true;
														right = true;
														left = false;
													});
												}
											)
										],
									),
									CustomPaint(painter: LineDashedPainter(case11 || case13  || case15 || case16 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 10, 0, width / 10, height * 0.3))
								],
							),
							GestureDetector
							(
								child: Container
								(
									margin:  EdgeInsets.only(top: 10, right: 51),
									width: 200,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											Text("Refuses to comply", style: TextStyle(fontSize: 8),),
											const SizedBox(width: 5),
											Container
											(
												width: 15,
												height: 15,
												decoration: BoxDecoration
												(
													color :case14 ? CustomColors.blueActive :  Colors.white,
													borderRadius: BorderRadius.circular(15),
													border: Border.all
													(
														width: 2,
														color: case14 ? CustomColors.blueBorderActive : CustomColors.grey,
														style: BorderStyle.solid,
													),
												),
											)
										],
									)
								),
								onTap: ()
								{
									case1 = false;
									case3 = false;
									case5 = false;
									case7 = false;
									case9 = false;
									case11 = false;
									case13 = false;
									case15 = false;
									case16 = false;
									case2 = true;
									case4 = true;
									case6 = true;
									case8 = true;
									case10 = true;
									case12 = true;
									case14 = true;
									left = false;
									right = false;

									setState(() {
									
									});
								}
							),
							const SizedBox(height: 40),
							button2("Physically limit vehicle access", width, case14, "10"),
							const SizedBox(height: 40),
							Row
							(
								mainAxisAlignment: MainAxisAlignment.spaceAround,
								children: 
								[
									button3("Reassess periodically", width, left),
									button3("Seniors stops driving", width, right)
								],
							),
							const SizedBox(height: 20),
						],
					),
				)
		
			) 
		);
  	}

	Widget connector(width, isTrue, value, text)
	{
		return GestureDetector
		(
			child: Container
			(
				margin:  EdgeInsets.only(top: 10),
				width: 125,
				height: 40,
				child: Row
				(
					mainAxisAlignment: MainAxisAlignment.center,
					children: 
					[
						Text(text, style: TextStyle(fontSize: 8),),
						const SizedBox(width: 5),
						Container
						(
							width: 15,
							height: 15,
							decoration: BoxDecoration
							(
								color :isTrue ? CustomColors.blueActive : Colors.white,
								borderRadius: BorderRadius.circular(15),
								border: Border.all
								(
									width: 2,
									color: isTrue ? CustomColors.blueBorderActive : CustomColors.grey,
									style: BorderStyle.solid,
								),
							),
						)
					],
				)
			),
			onTap: ()
			{
				// print(value);

				case1 = false;
				case3 = false;
				case5 = false;
				case7 = false;
				case9 = false;
				case11 = false;
				case13 = false;
				case15 = false;
				case16 = false;
				left = false;
				right = false;
				
				switch (value) 
				{
					case "case2":
					case2 = true;
					break;

					case "case4":
					case2 = true;
					case4 = true;
					break;

					case "case6":
					case2 = true;
					case4 = true;
					case6 = true;
					break;

					case "case8":
					case2 = true;
					case4 = true;
					case6 = true;
					case8 = true;
					break;

                    case "case10":
					case2 = true;
					case4 = true;
					case6 = true;
					case8 = true;
					case10 = true;
					break;

					case "case12":
					case2 = true;
					case4 = true;
					case6 = true;
					case8 = true;
					case10 = true;
					case12 = true;
					break;

					case "case14":
					case2 = true;
					case4 = true;
					case6 = true;
					case8 = true;
					case10 = true;
					case12 = true;
					case14 = true;
					break;

				  	default:
				}

				setState(() {
				  
				});
			}
		);
	}

	Widget button(text, isActive)
	{
	  	var width = MediaQuery.of(context).size.width / 2.6;
		var height = MediaQuery.of(context).size.height / 14;

		return SizedBox
		(
			width: width,
			height: height,
			child:  ElevatedButton
			(
				child: Text
				(
					text,
					style:  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, color: Colors.black, fontWeight: FontWeight.w400)
				),
				style: ButtonStyle
				(
					foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
					backgroundColor: MaterialStateProperty.all<Color>(isActive ? CustomColors.orangeActive : CustomColors.orange),
					shape: MaterialStateProperty.all<RoundedRectangleBorder>
					(
						RoundedRectangleBorder
						(
							borderRadius: BorderRadius.circular(10),
							side: BorderSide(color: isActive ? CustomColors.orangeBorderActive : CustomColors.orangeBorder)
						)
					)
				),
				onPressed: () async
				{
					// _popupBox.warningSigns(context);
				}
			)
		);
	}

	Widget button2(text, width, isTrue, popUpText)
	{
		return SizedBox
		(
			width: MediaQuery.of(context).size.width / 2.5,
			height: MediaQuery.of(context).size.height / 14,
			child:  ElevatedButton
			(
				child: Text
				(
					text,
					style:  TextStyle(fontSize: width * .03, color: Colors.black, fontWeight: FontWeight.w400),
					textAlign: TextAlign.center
				),
				style: ButtonStyle
				(
					// foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
					backgroundColor: MaterialStateProperty.all<Color>(isTrue ? CustomColors.blueActive : CustomColors.blue),
					shape: MaterialStateProperty.all<RoundedRectangleBorder>
					(
						RoundedRectangleBorder
						(
							borderRadius: BorderRadius.circular(10),
							side: BorderSide(color: isTrue ? CustomColors.blueBorderActive : CustomColors.blueBorder)
						)
					)
				),
				onPressed: () async
				{
						switch (popUpText) 
						{
							case "1":
								_popupBox.reviewRegulation(context);
								break;
							case "2":
								_popupBox.discussDriving(context);
								break;
							case "3":
								_popupBox.addressFactors(context);
								break;
							case "4":
								_popupBox.modifyDrivingHabits(context);
								break;
							case "5":
								_popupBox.reviewApproach(context);
								break;
							case "6":
								_popupBox.discussWithSeniors(context);
								break;
							case "7":
								_popupBox.conductInformalAssessment(context);
								break;
							case "8":
								_popupBox.arrangeFormalAssessment(context);
								break;
							case "9":
								_popupBox.formalDMV(context);
								break;
							case "10":
								_popupBox.limitVehicleAccess(context);
								break;
								
							default:
								_popupBox.limitVehicleAccess(context);
								break;
							}
				}
			)
		);
	}

	Widget button3(text, width, isActive)
	{
		return SizedBox
		(
			width: MediaQuery.of(context).size.width / 2.2,
			height: MediaQuery.of(context).size.height / 14,
			child:  ElevatedButton
			(
				child: Text
				(
					text,
					style:  TextStyle(fontSize: width * 0.03, color: Colors.black, fontWeight: FontWeight.w400),
					textAlign: TextAlign.center
				),
				style: ButtonStyle
				(
					// foregroundColor: MaterialStateProperty.all<Color>(CustomColors.greyBorder),
					backgroundColor: MaterialStateProperty.all<Color>(isActive ? CustomColors.greyActive : CustomColors.grey),
					shape: MaterialStateProperty.all<RoundedRectangleBorder>
					(
						RoundedRectangleBorder
						(
							borderRadius: BorderRadius.circular(10),
							side: BorderSide(color: isActive ? CustomColors.greyBorderActive : CustomColors.greyBorder)
						)
					)
				),
				onPressed: () async
				{
					// _popupBox.warningSigns(context);
				}
			)
		);
	}

	Widget binaryText(text, width)
	{
		return Text(text, style:  TextStyle(fontSize: 8, color: Colors.black, fontWeight: FontWeight.w400));
	}
}


class LineDashedPainter extends CustomPainter
{
	Color color;
	double x1, x2, y1, y2;

  	LineDashedPainter(this.color, this.x1, this.y1, this.x2, this.y2);

	@override
	void paint(Canvas canvas, Size size)
	{
		var paint = Paint()
		..strokeWidth = 1.5
		..color = CustomColors.grey;
		paint.color = color;
		var max = 100;
		var dashWidth = 5;
		var dashSpace = 0;
		// double startY = 0;

		Path path = Path();
		path.lineTo(78, 52);
		canvas.drawPath(path, paint);
		
		while (max >= 0)
		{
	  		canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
	  		final space = (dashSpace + dashWidth);
	  		// startY += space;
	  		max -= space;
		}
  	}

	@override
	bool shouldRepaint(CustomPainter oldDelegate) => false;
}


class PathPainter extends CustomPainter 
{
	double x1, y1, x2, y2, x3, y3;

  	PathPainter(this.x1, this.y1, this.x2, this.y2, this.x3, this.y3);

	@override
  	void paint(Canvas canvas, Size size) 
	{
    	Paint paint = Paint()
		..color = Colors.red
		..style = PaintingStyle.stroke
		..strokeWidth = 2.0;

		Path path = Path();

		path.moveTo(x3, y3);
		path.conicTo(x1, y1, x2, y2, 850);
		canvas.drawPath(path, paint);
  }

  
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

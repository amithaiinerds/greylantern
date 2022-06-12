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
							// CustomPaint(painter: LineDashedPainter(case2 ? CustomColors.blueBorderActive : CustomColors.grey, 10, (height / 200), 10, height / 1.5)),
							CustomPaint(painter: LineDashedPainter(case2 ? CustomColors.blueBorderActive : CustomColors.grey, 10, (height / 200), 10, 400)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											// CustomPaint(painter: LineDashedPainter(case1 ? Colors.blue : CustomColors.grey, -(width / 5), 0, -(width / 5), height * .66)),
											CustomPaint(painter: LineDashedPainter(case1 ? Colors.blue : CustomColors.grey, -(width / 5), 0, -(width / 5), 393)),
											CustomPaint(painter: LineDashedPainter(case1 ? Colors.blue : CustomColors.grey, width / 5 , 0, -(width / 5) , 0)),
											Center(child: _customButton.button(context, "Warning signs?", case1 == true ? case1 : case2, context))
										]
									),
									Positioned
									(
										left: width * 0.2,
										child: Column
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
														// margin: EdgeInsets.only(right: 10, bottom: (height / 50)),
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
											]
										),
									)
								],
							),
							GestureDetector
							(
								child: Container
								(
									// color: Colors.red,
									margin:  const EdgeInsets.only(top: 10),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Yes", style: const TextStyle(fontSize: 8),),
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
							// CustomPaint(painter: LineDashedPainter(case4 ? CustomColors.blueBorderActive : CustomColors.grey, 10, height / 20, 10, height  / 2)),
							CustomPaint(painter: LineDashedPainter(case4 ? CustomColors.blueBorderActive : CustomColors.grey, 10, height / 20, 10, 250)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											// CustomPaint(painter: LineDashedPainter(case1 || case3 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), height * .38)),
											CustomPaint(painter: LineDashedPainter(case1 || case3 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), 220)),
											CustomPaint(painter: LineDashedPainter(case3 ? CustomColors.blueBorderActive : CustomColors.grey, width / 5 , 0, -(width / 5) , 0)),
											Center(child: _customButton.button(context, "Concerns persit?", case2, context)),
										],
									),
									Positioned
									(
										left: width * 0.2,
										// to: 1,
										child: Column
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
														// margin: EdgeInsets.only(right: 1),
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
									)
								],
							),
							GestureDetector
							(
								child: Container
								(
									margin:  const EdgeInsets.only(top: 10),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Yes", style: const TextStyle(fontSize: 8),),
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
							button2("Modify driving habits", width, case4, "4"),
							const SizedBox(height: 40),
							// CustomPaint(painter: LineDashedPainter(case6 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 85), 10, height / 2)),
							CustomPaint(painter: LineDashedPainter(case6 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 85), 10, 230)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											// CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), height * .58)),
											CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), 358)),
											CustomPaint(painter: LineDashedPainter(case5 ? CustomColors.blueBorderActive : CustomColors.grey, width / 5 , 0, -(width / 5) , 0)),
											Center(child: _customButton.button(context, "Concerns persit?", case5 ? case5 : case6, context))
										],
									),
									Positioned
									(
										left: width * 0.2,
										child: Column
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
														// margin: EdgeInsets.only(right: 10, bottom: (height / 50)),
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
									)
								]
							),
							// SizedBox(height: 40),
							connector(width, case6, "case6", "Yes"),
							const SizedBox(height: 40),
							button2("Review approaches", width, case6, "6"),
							const SizedBox(height: 40),
							// CustomPaint(painter: LineDashedPainter(case8 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, height  / 4)),
							CustomPaint(painter: LineDashedPainter(case8 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, 150)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											button2("Discuss driving risks with senior", width, case6, "6"),
											CustomPaint(painter: LineDashedPainter(case11 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4, 0, 0, 0)),
											// CustomPaint(painter: LineDashedPainter(case11 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, height * 0.22)),
											CustomPaint(painter: LineDashedPainter(case11 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, 136)),
										],
									),
									Positioned
									(
										right: width * 0.1,
										child: Column
										(
											crossAxisAlignment: CrossAxisAlignment.center,
											children: 
											[
												const Text("Agrees to stop", style:  TextStyle(fontSize: 9, color: Colors.black, fontWeight: FontWeight.w400)),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: EdgeInsets.only(right: 1),
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
													},
												)
											],
										),
									)
								]
							),
							GestureDetector
							(
								child: Container
								(
									margin:  const EdgeInsets.only(top: 10, right: 50),
									width: 200,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Continues to drive", style: const TextStyle(fontSize: 8)),
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
							// CustomPaint(painter: LineDashedPainter(case10 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, height / 60, 10, height * 0.23)),
							CustomPaint(painter: LineDashedPainter(case10 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, height / 60, 10, 150)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											// CustomPaint(painter: LineDashedPainter(case7 ? Colors.blue : CustomColors.grey, -(width / 5), 0, -(width / 5), height * .9)),
											CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 || case7 ? Colors.blue : CustomColors.grey, -(width / 5), 0, -(width / 5), 135)),
											CustomPaint(painter: LineDashedPainter(case7 ? Colors.blue : CustomColors.grey, width / 5 , 0, -(width / 5) , 0)),
											button2("Conduct informal driving assessment",  width, case8, "7"),
											CustomPaint(painter: LineDashedPainter(case13 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4, 0, 0, 0)),
											CustomPaint(painter: LineDashedPainter(case11 || case13 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, 136))
											// CustomPaint(painter: LineDashedPainter(case11 || case13 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, height * 0.22))
										]
									),
									Positioned
									(
										left: width * 0.2,
										child: Column
										(
											crossAxisAlignment: CrossAxisAlignment.center,
											children: 
											[
												const Text("Pass", style: const TextStyle(fontSize: 8),),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: EdgeInsets.only(right: 1, bottom: (height / 50)),
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
									),
									Positioned
									(
										right: width * 0.1,
										child: Column
										(
											crossAxisAlignment: CrossAxisAlignment.center,
											children: 
											[
												const Text("Agrees to stop", style:  const TextStyle(fontSize: 9, color: Colors.black, fontWeight: FontWeight.w400)),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: EdgeInsets.only(right: 1),
														width: 15,
														height: 15,
														decoration: BoxDecoration
														(
															color :case13 ? CustomColors.blue : Colors.white,
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
									)
								],
							),
							GestureDetector
							(
								child: Container
								(
									margin:  const EdgeInsets.only(top: 10, right: 38),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Refuses or fails", style: const TextStyle(fontSize: 8)),
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
							// CustomPaint(painter: LineDashedPainter(case12 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, height * 0.25)),
							CustomPaint(painter: LineDashedPainter(case12 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, (height / 60), 10, 150)),
							Stack
							(
								children: 
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											// CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 || case7 || case9 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), height * 0.45)),
											CustomPaint(painter: LineDashedPainter(case1 || case3 || case5 || case7 || case9 ? CustomColors.blueBorderActive : CustomColors.grey, -(width / 5), 0, -(width / 5), 350)),
											CustomPaint(painter: LineDashedPainter(case9 ? CustomColors.blueBorderActive : CustomColors.grey, width / 5 , 0, -(width / 5) , 0)),
											button2("Arrange formal driving assessment", width, case10, "8"),
											CustomPaint(painter: LineDashedPainter(case15 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4, 0, 0, 0)),
											// CustomPaint(painter: LineDashedPainter(case11 || case13 || case15 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, height * 0.23))
											CustomPaint(painter: LineDashedPainter(case11 || case13 || case15 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, 135))
										],
									),
									Positioned
									(
										left: width * 0.2,
										child: Column
										(
											children: 
											[
												const Text("Pass", style: TextStyle(fontSize: 8),),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: EdgeInsets.only(right: 1, bottom: (height / 50)),
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
											]
										)
									),
									Positioned
									(
										right: width * 0.1,
										child: Column
										(
											children: 
											[
												const Text("Agrees  to  stop", style: const TextStyle(fontSize: 8),),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: const EdgeInsets.only(left: 10, bottom: 20),
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
									)
								],
							),
							// SizedBox(height: 40),
							GestureDetector
							(
								child: Container
								(
									margin:  const EdgeInsets.only(top: 10, right: 40),
									width: 125,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Refuses or fails", style: TextStyle(fontSize: 8),),
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
							// CustomPaint(painter: LineDashedPainter(case14 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, 10, 10, 150)),
							CustomPaint(painter: LineDashedPainter(case14 ? CustomColors.blueBorderActive :  CustomColors.grey, 10, 10, 10, 150)),
							Stack
							(
								children:
								[
									Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											button2("Formal DMV process", width, case12, "9"),
											// CustomPaint(painter: LineDashedPainter(case16 ? CustomColors.blueBorderActive :  CustomColors.grey, 105, 0, 0, 0)),
											CustomPaint(painter: LineDashedPainter(case16 ? CustomColors.blueBorderActive : CustomColors.grey, width / 4, 0, 0, 0)),
											CustomPaint(painter: LineDashedPainter(case11 || case13 || case15 || case16 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, 200))
											// CustomPaint(painter: LineDashedPainter(case11 || case13 || case15 || case16 ? CustomColors.blueBorderActive :  CustomColors.grey, width / 4, 0, width / 4, height * 0.3))
										],
									),
									Positioned
									(
										right: width * 0.1,
										child: Column
										(
											children: 
											[
												const Text("Agrees  to  stop", style: TextStyle(fontSize: 8),),
												const SizedBox(height: 5),
												GestureDetector
												(
													child: Container
													(
														// margin: const EdgeInsets.only(left: 10, bottom: 20),
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
									)
								]
							),
							GestureDetector
							(
								child: Container
								(
									margin:  const EdgeInsets.only(top: 10, right: 51),
									width: 200,
									height: 40,
									child: Row
									(
										mainAxisAlignment: MainAxisAlignment.center,
										children: 
										[
											const Text("Refuses to comply", style: TextStyle(fontSize: 8),),
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
									button3("Senior stops driving", width, right)
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
				margin:  const EdgeInsets.only(top: 10),
				width: 125,
				height: 40,
				child: Row
				(
					mainAxisAlignment: MainAxisAlignment.center,
					children: 
					[
						Text(text, style: const TextStyle(fontSize: 8),),
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
				case2 = true;
				case4 = true;
				case6 = true;



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
			width: 144,
			height: 46,
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
		return Text(text, style:  const TextStyle(fontSize: 9, color: Colors.black, fontWeight: FontWeight.w400));
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

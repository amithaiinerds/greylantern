import 'package:buttonclick/color.dart';
import 'package:flutter/material.dart';
import 'package:buttonclick/pop_up.dart';


class CustomButton
{
	final PopupBox _popupBox = PopupBox();

	SizedBox button(context, text, isActive, popUp)
	{    
        var width = MediaQuery.of(context).size.width / 2.6;
		var height = MediaQuery.of(context).size.height / 14;

		return SizedBox
		(
			width: 144,
			height: 46,
			child: ElevatedButton
			(
				child: Text
				(
					text,
					style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400)
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
					if(text == "Warning signs?")
					{
							_popupBox.warningSigns(context);
					}
				}
			)
		);
	}

	Widget briefText(text, isactive, context, popUpText)
	{
		return GestureDetector
		( 
			child: Container
			(
				width: 170,
				height: 60,
				padding: const EdgeInsets.all(10),
				decoration: BoxDecoration
				(
					border: Border.all(color: isactive ? Colors.blue : Color(int.parse("0xffC7DCF2"))),
					color: isactive ? Color(int.parse("0xffB7DAFC")) : Color(int.parse("0xffE9F4FE")),
					borderRadius: BorderRadius.circular(10)
				),
				child:Center
				(
					child: Text
					(
						text,
						style: const TextStyle
						(
							fontSize: 15,
							color: Colors.black,
						),
						textAlign: TextAlign.center,
					),
				)
			),
			onTap: ()
			{
				switch (popUpText) {
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
			},
		);
	}

	Widget endText(text)
	{
		return Container
		(
			width: 150,
			height: 60,
			// margin: EdgeInsets.only(left: 5, right: 5),
			decoration: BoxDecoration
			(
				border: Border.all(color: Color(int.parse("0xffC7DCF2"))),
				color: Color(int.parse("0xffECECEC")),
            	borderRadius: BorderRadius.circular(10)
          	),
			child:Center
			(
				child: Text
				(
					text,
					style: const TextStyle
					(
						fontSize: 15,
						color: Colors.black,
					),
					textAlign: TextAlign.center,
				)
			)
		);
	}
}
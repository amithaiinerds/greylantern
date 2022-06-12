import 'package:buttonclick/color.dart';
import 'package:flutter/material.dart';

class PopupBox
{
	int adminId = 0;

  	warningSigns(context)
  	{
    	AlertDialog alert = AlertDialog
      	(
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
			backgroundColor: CustomColors.white,
			content: StatefulBuilder
			(
				builder: (BuildContext context, StateSetter setState)
				{
					return  SingleChildScrollView
					(
							child: Column
							(
								mainAxisSize: MainAxisSize.min,
								children: <Widget>
								[
									Align
									(
										alignment: Alignment.topRight,
										child: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
									),
									Row
									(
										children: const
										[
											Text
											(
												"Warning Signs\n",
												style: TextStyle(fontWeight: FontWeight.bold),
											),
											Text
											(
												"",
												style: TextStyle(fontWeight: FontWeight.bold),
												textAlign: TextAlign.center,
											),
										],
									),
									const Text
									(
										"Driging into other lanes \nStradding lanes \nMaking sudden lane changes \nIgnoring or missing stop sigs and traffic signals \nBraking or stopping abruptly without cause \nAccelrating suddenly without reason \nCoasting to a near stop amind moving traffic \nPressing simultaneoulsy on the brake and accelerator pedals \nDifficulty seeing pedestarins, objects and other vehicles \nIncreasinf level of anxiety while driving \nDriving significanltey slower than th posted or general speed \nBacking up after missing an exit or turn \nDifficult reacting quickly and/or processing multiple stimuli \nProblems with back/neck flexibility and turning to see around car \nGetting lost or disoriented easliy, even in familar places \nFailing to use turn signals or signals on without changing lanes \nIncreased 'close calls' and 'near misses' \nTwo or more traffic citations or warnins in the past two years \nDents and scrapes on their car or on surrounding objects",
										style: TextStyle
										(
											fontWeight: FontWeight.w400,
											fontSize: 12,
											height: 1.5,
										),
									)
								]
							)
              		);
            	}
        	)
    	);

    	showDialog
      	(
			context: context,
			barrierDismissible: false,
			builder: (BuildContext context)
			{
				return alert;
			}
    	);
  	}

  	reviewRegulation(context)
  	{
		AlertDialog alert = AlertDialog
		(
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
			backgroundColor: CustomColors.white,
			content: StatefulBuilder
			(
				builder: (BuildContext context, StateSetter setState)
				{
					return  Column
					(
						crossAxisAlignment: CrossAxisAlignment.start,
						mainAxisSize: MainAxisSize.min,
						children:  <Widget>
						[
							Align
							(
								alignment: Alignment.topRight,
								child: IconButton
								(
									icon: const Icon(Icons.close),
									onPressed: ()
									{
										Navigator.pop(context);
									},
								)
							),
							const SizedBox(height: 1),
							const Text
							(
								"Elderly drivers and the law (CA",
								style: TextStyle
								(
									fontWeight: FontWeight.bold
								),
							),
							const SizedBox(height: 4),
							Linkify
							(
								onOpen: _onOpen,
								textScaleFactor: 1,
								text: "https://www.shouselaw.com/ca/defense/dmy-hearing/elderly-drivers/",
								style: TextStyle
								(
									// fontWeight: FontWeight.w400
								),
							),
						]
					);
				}
			)
    	);

		showDialog
		(
			context: context,
			barrierDismissible: false,
			builder: (BuildContext context)
			{
			return alert;
			}
		);
  	}

	Future<void> _onOpen(LinkableElement link) async 
	{
		if (await canLaunch(link.url)) 
		{
			await launch(link.url);
		} 
		else 
		{
			throw 'Could not launch $link';
		}
  	}

  	discussDriving(context)
  	{
    	AlertDialog alert = AlertDialog
      	(
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
			backgroundColor: Color(int.parse("0xffF6F6F6")),
			content: StatefulBuilder
			(
				builder: (BuildContext context, StateSetter setState)
				{
					return SingleChildScrollView
					(
						child: Column
						(
							crossAxisAlignment: CrossAxisAlignment.start,
							mainAxisSize: MainAxisSize.max,
							children:
							[
								Align
								(
									alignment: Alignment.topRight,
									child: IconButton
									(
										icon: const Icon(Icons.close),
										onPressed: ()
										{
											Navigator.pop(context);
										},
									)
								),
								// const SizedBox(height: 30),
								const Text
								(
									"How to talk to seniors about driving risks\n",
									style: TextStyle(fontWeight: FontWeight.bold),
								),
								const Text
								(
									"If you have concerns about an elderly adult's ability to drive, addressing them promptly could be a matter of life and death. Considering the possible consequences should help you overcome your hesitation - but that doesn't mean it will be easy. It's awkward and painful to have to inform older adults that they aren't capable of doing something as basic and essential as driving the car. For them, it can be another reminder of their growing inability to take care of themselves and manage the tasks of daily life. As difficult as it is, if you have reason to believe that the person in your care could be dangerous behind the wheel, it's important to deal with the issue sooner rather than later because later could be too late.",
									style: TextStyle
									(
										fontWeight: FontWeight.w400,
										fontSize: 12,
										height: 1.5,
									)
								),
								const SizedBox(height: 30),
								const Text
								(
									"Plan ahead:",
									style: TextStyle(fontWeight: FontWeight.bold),
									textAlign: TextAlign.center,
								),
                        		const Text
								(
									"Elderly people face so many losses at this stage of life, they tend to rigidly control the few things they can. This struggle for control will almost certainly come into play where driving is concerned, because giving up the car keys could affect where they live, who they see, and what interests and activities they can pursue. To you, this decision is a simple matter of good sense and safety; for them, it represents the end of life as they've always known it.",
									style: TextStyle
									(
										fontWeight: FontWeight.w400,
										fontSize: 12,
										height: 1.5
									),
								),
								const SizedBox(height: 30),
								const Text("Prepare for More Conversations",
									style: TextStyle
									(
										fontWeight: FontWeight.bold
									)),
								const Text("Make sure your expectations are realistic. If you assume that one discussion will neatly resolve the matter, you're bound to be disappointed. Given how charged the driving issue is, you need to think of this as a process that will take some adjustment and fine tuning. Consider this a preliminary discussion only; a way to get the issue out on the table so it can be dealt with openly.",
								style: TextStyle
									(
									fontWeight: FontWeight.w400,
									fontSize: 12,
									// letterSpacing: 0.5,
                           			 height: 1.5,
                            // wordSpacing: 1.5
                          ),),
                        const SizedBox(height: 30),
                        const Text("Start with Curiosity",
                            style: TextStyle
                              (
                                fontWeight: FontWeight.bold
                            )),
                        const Text("Remember that if you've noticed that their driving has grown erratic and sloppy, they're probably aware of it, too. You can be most helpful by helping them express and work through their own concerns. A good way to do this is to initiate the discussion with a question. For instance, if you know that he has received a traffic ticket, ask him about it, and then follow up with another question like, 'How are you doing with your driving? Are you finding it a little difficult to manage?'",
                          style: TextStyle
                            (
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            // letterSpacing: 0.5,
                            height: 1.5,
                            // wordSpacing: 1.5
                          ),),
                        const SizedBox(height: 30),
                        const Text("Handle Objections With Reflective Listening",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        const Text("Encourage them to discuss their concerns without immediately jumping in with solutions (don't rush in with 'I'm sure Jack or Stan will be happy to drive you to the golf course or The bus goes right by the physical therapy office)'. It's also usually counterproductive to offer reassurances ",
                          style: TextStyle
                            (
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            // letterSpacing: 0.5,
                            height: 1.5,
                            // wordSpacing: 1.5
                          ),),
                        const SizedBox(height: 30),
                        const Text("Allow Space for a Long Conversation",
                            style: TextStyle
                              (
                                fontWeight: FontWeight.bold
                            )),
                        const Text("When reflecting about driving and its role in your aging loved one's life, don't be surprised if they begin to talk about the past. He or she may reminisce about their honeymoon road trip to the Grand Canyon or recall how they saved up money for their first car or taught all the kids how to drive.",
                          style: TextStyle
                            (
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            // letterSpacing: 0.5,
                            height: 1.5,
                            // wordSpacing: 1.5
                          ),)
                      ]
                  )
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  addressFactors(context)
  {
    AlertDialog alert = AlertDialog
      (
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return SingleChildScrollView
                (
                  child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children:
                       [
						   Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                        SizedBox(height: 10),
                        Text
                          (
                          "Factors that can contribute to driving X risks \n",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("o Medications \no Low vision \no Poor hearing \no Musculoskeletal or neurological problems",
                          style: TextStyle
                            (
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 30),
                        Text
                          (
                          "Each factor will have a link to a Gray Lantern Knowledge Base topic explaining the potential issue and how to investigate the severity.\n",
                          style: TextStyle
                            (
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            // letterSpacing: 0.5,
                            height: 1.5,
                            // wordSpacing: 1.5
                          ),
                        ),
                        Text("If remediation is warranted, a GL KB topic can help the user with solution processes and assistance.",
                          style: TextStyle
                            (
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            // letterSpacing: 0.5,
                            height: 1.5,
                            // wordSpacing: 1.5
                          ),),
                        SizedBox(height: 30)
                      ]
                  )
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  modifyDrivingHabits(context)
  {
    AlertDialog alert = AlertDialog
      (
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return  Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                   [
					    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                    SizedBox(height: 10),
                    Text
                      (
                      "Modifying elderly driving to reduce risks \n",
                      style: TextStyle
                        (
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("o Avoid driving at night \no Avoid driving in bad weather \no Take shorter trips \no Take regular breaks on longer trips \no Get others to drive \no Uber and Lyft \no Public transportation \no Other tips",
                        style: TextStyle
                          (
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          // letterSpacing: 0.5,
                          height: 1.5,
                          // wordSpacing: 1.5
                        )),
                    SizedBox(height: 30)
                  ]
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  reviewApproach(context)
  {
    AlertDialog alert = AlertDialog
      (
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return  Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                   [
					    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                    SizedBox(height: 10),
                    Text
                      (
                        "Getting help with the tough driving discussion with a senior \n",
                        style: TextStyle
                          (
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text("o Family members \no Online communities \no Knowledge Base 'Been there!' videos \no Knowledge Base topic \no Gray Lantern Advisor",
                        style: TextStyle
                          (
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          // letterSpacing: 0.5,
                          height: 1.5,
                          // wordSpacing: 1.5
                        )),
                    SizedBox(height: 30)
                  ]
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  discussWithSeniors(context)
  {
    AlertDialog alert = AlertDialog
      (
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return SingleChildScrollView
                (
                  child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children:
                       [
						    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                        SizedBox(height: 10),
                        Text
                          (
                          "The tough driving discussion with a senior \n",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text("When you have the tough conversation with the Senior, you want the conversations with the person to be positive, progressive, and productive. \n\n Here are the 3 W's to help you have a good conversation about not driving. \n\n Who should be the messenger? The person who answers yes to these questions may be in the most favorable position. Is it you or someone else? If it's not you, you may need to have a preliminary conversation with the person in the most favorable position to take action. \n\n When is a good time to talk? It's never too early to talk about driving issues, but these conversations warrant careful attention, planning and serious discussion. Here are some good opportunities to start a conversation naturally.\n",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("Change in frequency or severity of warning signs \nChange in health, medication, or cognitive status \nChange in financial situation or vehicle ownership",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("What do you want your conversation to accomplish? Keep your conversations simple, short and direct. Focus on one or two key points at a time. Here are some appropriate topics with some sample conversation starters. Which of these topics do you need to discuss?",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("o Family's willingness to help. 'When you go to the grocery store, can I go? Or instead, let me drive.\n We're willing to drive, but you have to let us.' \n\n o Transportation needs and alternatives. 'The mall is having a sale. What if I pick you up at 10?' \n\n o Observations of warning signs. 'How did those scrapes get on your car? They may mean that there could be a problem judging distances. What do you think?' 'We need to talk to your doctor about this.'\n",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        // SizedBox(height: 30),
                        Text("o Planning alternative transportation. 'The van driver said he would make sure you got to your appointment on time.' \n\n o Potential risks to self or others. 'I know you think you're okay driving. But you always said, 'Better safe than sorry.' \n\n o Need to stop driving. 'We don't feel safe when you drive." "I would feel awful if something terrible happened to you or someone else on the road. \n\no Getting support from others. 'I've noticed changes in his driving. Could you ride with him and see what you think?' 'Can we take turns taking her to the grocery store?' 'She needs to hear this from more than just me.'",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),

                      ]
                  )
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  conductInformalAssessment(context)
  {
    AlertDialog alert = AlertDialog
      (
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return  Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                   [
					    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                    SizedBox(height: 10),
                    Text
                      (
                      "Approaches to monitoring driving safely without a formal assessment \n",
                      style: TextStyle
                        (
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30)
                  ]
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  arrangeFormalAssessment(context)
  {
    AlertDialog alert = AlertDialog
      (
		contentPadding: EdgeInsets.all(5),
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return  Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                   [
					    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                    SizedBox(height: 10),
                    Text
                      (
                      "Arranging  a formal driving assessment \n",
                      style: TextStyle
                        (
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30)
                  ]
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  formalDMV(context)
  {
    AlertDialog alert = AlertDialog
      (
		contentPadding: EdgeInsets.all(1),
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return  Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:
                   [
					   Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                    SizedBox(height: 10),
                    Text
                      (
                      "Engaging the Department of Motor Vehicles around a driving risk.",
                      style: TextStyle
                        (
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30)
                  ]
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }

  limitVehicleAccess(context)
  {
    AlertDialog alert = AlertDialog
      (
		contentPadding: EdgeInsets.all(15),
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Color(int.parse("0xffF6F6F6")),
        content: StatefulBuilder
          (
            builder: (BuildContext context, StateSetter setState)
            {
              return SingleChildScrollView
                (
                  child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children:
                       [
						    Align
					  (
						  alignment: Alignment.topRight,
						  child: IconButton
						  (
							  icon: const Icon(Icons.close),
							  onPressed: ()
							  {
								  Navigator.pop(context);
							  },
						  )
					  ),
                        SizedBox(height: 10),
                        Text
                          (
                          "10 tips to physically prohibit senior driving \n",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("1. Anonymously report them to the DMV",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        // SizedBox(height: 30),
                        Text("The Department of Motor Vehicles (DMV) allows people to report unsafe drivers, often anonymously. You don't have to be a doctor, anyone can file a report. The benefit is that your older adult won't blame you for taking their license away. Instead, they'll be angry with the DMV.Each state's DMV has different procedures.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("Typically when someone is reported as an unsafe driver, they're called in for a driver's license retest regardless of when their license expires. Contact your local DMV to find out what is needed in your state to request a retest. If you don't feel comfortable filing a DMV report, speak confidentially with their doctor and share your concerns. Ask the doctor to write a letter that you can take to the DMV.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("2. Use Alzheimer's or dementia forgetfulness to your advantage",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        // SizedBox(height: 30),
                        Text("Alzheimer's or dementia can cause seniors to become irrational and stubborn about driving. In these situations, an effective strategy is to remove the car and any reminders of driving. At the same time, creatively distract them from the topic until they forget about driving altogether. This approach spares them from angry confrontations or getting depressed about not being allowed to drive.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("3. Have a relative or close friend 'borrow' the car",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        // SizedBox(height: 30),
                        Text("If your older adult's car isn't in the garage, they won't be able to drive it. To keep them from getting suspicious, you could arrange for a relative or close friend to borrow the car. For example, the relative could pretend that their own car is in the shop for major repairs. If it's a young relative, they could say they need a car for school or a job. When the car is out of sight or unavailable for a good reason, your older adult may be more willing to give up driving. You don't have to actually give the car away, that's just a cover story to get the car out of their sight. After that, it's your decision to keep, sell, or give away the car.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("4. Hide or 'lose' the car keys",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Another way to keep your older adult from driving is to hide the car keys or pretend they're lost. It's best to do this while they're asleep so they won't suspect that you've taken them.\n If they ask you where the keys are, pretend that you have no idea. You could even help them look and after searching the house, declare the keys hopelessly lost. Say that you'll get a new set, but it could take a while.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("5. Take the car for repairs",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Pretending that the car is having a problem is another effective method. Tell your older adult that the car is at the auto shop for repairs. This gets the car away from the house - similar to having a relative borrow it. Your senior may ask why the car has been in the shop for so long. Be prepared to say something like: \n A repair part hasn't arrived yet The repairs cost more than the car is worth The mechanic says the car can't be fixed",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("6. Disable the car",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        Text("A good way to prevent someone from driving is to disable their car. Do something simple like unplugging the battery or locking the steering wheel with a 'Club.' Even if they managed to get the keys, they still wouldn't be able to drive a disabled car.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("7. Sell the car",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Selling their car is another way of making sure your older adult can no longer drive. Make up a story for why this is necessary. For example, you might say that a close relative needs money and this is the only way to help. You don't have to actually sell the car if you don't want to, but this is another way to get it out of sight for a seemingly legitimate reason.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                        SizedBox(height: 30),
                        Text("8. Hide your own car and car keys",
                          style: TextStyle
                            (
                              fontWeight: FontWeight.bold
                          ),),
                        Text("If your car available, your older adult might try to take your keys and drive your car. that's happening, make sure to hide your own keys and park your car out of their sight. Whenever you to go out, you can say that is giving you a ride or that you're taking public transportations.",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              // letterSpacing: 0.5,
                              height: 1.5,
                              // wordSpacing: 1.5
                            )),
                      ]
                  )
              );
            }
        )
    );

    showDialog
      (
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context)
        {
          return alert;
        }
    );
  }
} 
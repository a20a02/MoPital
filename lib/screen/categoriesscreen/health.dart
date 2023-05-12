import 'package:flutter/material.dart';
import 'package:mopital_app/constants.dart';
import '../../widget/categories_appbar.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoriesAppbar(context, 'Health'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  "Here you will find articles talking about your child's physical and mental health",
                  style: smallFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Physical Health",
                  style: largeFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  """Physical health is crucial for children's growth and development. A healthy body sets the foundation for a healthy mind and overall well-being. Therefore, it is important for parents and caregivers to take steps to maintain their children's physical health.""",
                  style: smallFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32, left: 16),
                child: Text(
                  """1. Encourage regular physical activity: Regular exercise is important for maintaining a healthy body. Encourage your child to engage in physical activities such as sports, dance, or playing outside.
2. Ensure good sleep habits: Adequate sleep is crucial for physical health. Establish a consistent bedtime routine and make sure your child gets enough sleep every night.
3. Promote healthy eating habits: A balanced and nutritious diet can help maintain physical health. Encourage your child to eat a variety of fruits, vegetables, whole grains, and lean protein.
4. Ensure adequate hydration: Drinking enough water is important for physical health. Encourage your child to drink plenty of water throughout the day.
5. Practice good hygiene: Good hygiene practices such as hand-washing can prevent the spread of illness and disease.
6. Limit screen time: Too much screen time can have negative effects on physical health. Limit your child's screen time and encourage other activities.
7. Ensure regular checkups with a pediatrician: Regular checkups can help identify and prevent health problems. Make sure your child sees a pediatrician for regular checkups and vaccinations.
8. Promote sun safety: Protecting the skin from the sun can prevent skin damage and reduce the risk of skin cancer. Encourage your child to wear sunscreen, a hat, and protective clothing when spending time outdoors.""",
                  style: smallFont,
                ),
              ),
              Image.asset(
                'images/physicalhealth.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  """
9. Encourage safe behaviors: Teaching your child to practice safe behaviors such as wearing a helmet when biking or wearing a seatbelt in the car can prevent injuries.
10. Provide a safe environment: Ensuring a safe home environment can prevent accidents and injuries. Childproof your home and supervise your child to prevent accidents.
11. Teach healthy habits: Teaching healthy habits such as brushing teeth twice a day, flossing, and washing hands can help maintain physical health.
12. Encourage outdoor play: Spending time outside can improve physical health and reduce stress. Encourage your child to spend time playing outside.
13. Manage stress: Stress can have negative effects on physical health. Teach your child stress-management techniques such as deep breathing or mindfulness.
14. Encourage active transportation: Walking or biking to school or other activities can promote physical activity and reduce air pollution.
15. Lead by example: Children learn by example. Model healthy habits such as regular exercise, healthy eating, and good hygiene practices.
Maintaining children's physical health requires a proactive approach that includes promoting healthy habits, ensuring a safe environment, and seeking medical attention when necessary. By prioritizing physical health, parents and caregivers can help their children build a strong foundation for a healthy and happy life.""",
                  style: smallFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Mental Health",
                  style: largeFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  """Children's mental health is just as important as their physical health. Mental health problems can have a significant impact on a child's academic performance, social life, and overall well-being. Therefore, it is important for parents and caregivers to take steps to maintain their children's mental health.""",
                  style: smallFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32, left: 16),
                child: Text(
                  """
1. Encourage physical activity: Exercise is not only good for the body but also for the mind. Encourage your child to engage in physical activities such as playing outside, sports, or dancing.
2. Ensure good sleep habits: Adequate sleep is crucial for mental health. Establish a consistent bedtime routine and make sure your child gets enough sleep every night.
3. Promote healthy eating habits: A balanced and nutritious diet can help improve mood and reduce stress. Encourage your child to eat a variety of fruits, vegetables, whole grains, and lean protein.
4. Encourage socialization: Socializing with peers is important for a child's mental health. Encourage your child to participate in social activities such as playdates, sports teams, or clubs.
5. Limit screen time: Too much screen time can lead to anxiety, depression, and other mental health problems. Limit your child's screen time and encourage other activities.
6. Practice mindfulness: Mindfulness can help reduce stress and improve mood. Encourage your child to practice mindfulness techniques such as deep breathing, meditation, or yoga.
7. Be a good role model: Children learn by example. Model healthy habits such as self-care, stress management, and positive self-talk.
8. Teach problem-solving skills: Learning how to problem-solve can help reduce stress and improve mental health. Teach your child problem-solving skills such as brainstorming, evaluating options, and making a plan.""",
                  style: smallFont,
                ),
              ),
              Image.asset(
                'images/mentalhealth.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  """
9. Address bullying: Bullying can have a negative impact on mental health. Talk to your child about bullying and provide support if they are being bullied.
10. Seek professional help: If you notice signs of mental health problems such as changes in behavior or mood, seek professional help. A mental health professional can provide support and treatment.
11. Encourage open communication: Encourage your child to talk about their feelings and emotions. Create a safe and supportive environment for them to express themselves.
12. Build resilience: Resilience is the ability to bounce back from adversity. Encourage your child to develop resilience by teaching coping skills, positive self-talk, and problem-solving skills.
13. Foster a sense of belonging: Feeling connected and supported can improve mental health. Encourage your child to develop positive relationships with family, friends, and community.
14. Teach relaxation techniques: Relaxation techniques such as deep breathing, progressive muscle relaxation, or visualization can help reduce stress and anxiety.
15. Celebrate successes: Celebrate your child's successes, no matter how small. Positive reinforcement can help improve self-esteem and confidence, which can improve mental health.""",
                  style: smallFont,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  """In conclusion, maintaining children's mental health requires a holistic approach that includes promoting healthy habits, providing support and seeking professional help when necessary. By prioritizing mental health, parents and caregivers can help their children build resilience, develop positive relationships, and improve overall well-being. With the right tools and resources, children can thrive both physically and mentally, setting them up for a successful and fulfilling life.""",
                  style: smallFont,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

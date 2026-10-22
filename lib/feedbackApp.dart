import 'package:flutter/material.dart';

class FeedbackApp extends StatefulWidget{
  const FeedbackApp({super.key});

  @override
  State<FeedbackApp> createState() => _FeedbackAppState (); 

  }
 class _FeedbackAppState extends State<FeedbackApp>{
final TextEditingController _controller = TextEditingController();
 String name ="";
 bool isSets = false;

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
   @override
  Widget build(BuildContext context ) {
  return Scaffold(
backgroundColor: Colors.amber,
appBar: AppBar(
  title: const Text(
    'Обратная связь',
  style:TextStyle(color:Colors.black,
  fontSize: 18,
  ),
  ),
  centerTitle:true ,
  backgroundColor: Colors.transparent,
  elevation: 0,
),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24.0),
  child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      const Text('Напишите нам',
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
      color: Colors.black,
      ),
      ),
        SizedBox(height: 6),
        const Text('Ввудите ваше имя и нажмите кнопку отправки.',
        style: TextStyle(fontSize: 16, color: Colors.black,),
        ),
        const SizedBox(height: 24),

        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Ваше имя',
          ),
          onChanged: (value) {
            name = value;
          },
        ),
         const SizedBox(height: 24),

         Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  Colors. pink,
            ),
            onPressed: (){
              if(name.trim().isNotEmpty){
                setState((){
                  isSets = true;
                }
                );
                _controller.clear();
              }
            },
            child: const Text('Отправить',
            style: TextStyle(color: Colors.amberAccent,
            fontSize: 16,
            fontWeight: FontWeight.w400),
            ),
          ),
         ),

         const SizedBox(height:30),

         if(isSets)
         Center(
          child: Text('Отправлено! Спасибо, $name',
          style: const TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
         ),
    ],
  ),
),
  );
  }
 
 }
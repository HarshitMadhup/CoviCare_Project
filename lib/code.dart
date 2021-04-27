// ( children: [
//       new Column(children: [
//         Form(
//           key: form1,
//           child: Column(children: [
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: nameController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'Title'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter a name';
//                   }
//                 },
//               ),
//             )),
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: categoryController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'Category'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter a category';
//                   }
//                 },
//               ),
//             )),
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: locationController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'Location'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter a location';
//                   }
//                 },
//               ),
//             )),
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: contactController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'ALternate Contact'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter an alternate contact';
//                   }
//                 },
//               ),
//             )),
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: availabilityController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'Availability'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please check availablity';
//                   }
//                 },
//               ),
//             )),
//             Container(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: TextFormField(
//                 controller: priceController,
//                 textInputAction: TextInputAction.next,
//                 onEditingComplete: () => node.nextFocus(),
//                 decoration: InputDecoration(
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     labelText: 'Price'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter a price';
//                   }
//                 },
//               ),
//             )),
//             // Container(
//             //     child: Padding(
//             //   padding: const EdgeInsets.symmetric(
//             //       vertical: 10.0, horizontal: 10.0),
//             //   child: TextFormField(
//             //     controller: dateController,
//             //     textInputAction: TextInputAction.next,
//             //     onEditingComplete: () => node.nextFocus(),
//             //     decoration: InputDecoration(
//             //         floatingLabelBehavior: FloatingLabelBehavior.never,
//             //         labelText: 'Date'),
//             //     validator: (value) {
//             //       if (value.isEmpty) {
//             //         return 'Please enter a date';
//             //       }
//             //     },
//             //   ),
//             // )),
//             ElevatedButton(
//               child: Text(
//                 "Submit",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () {
//                 _sendMessage(
//                   nameController.text.trim(),
//                   priceController.text.trim(),
//                   availabilityController.text.trim(),
//                   contactController.text.trim(),
//                   categoryController.text.trim(),
//                   locationController.text.trim(),
//                 );
//               },
//             )
//           ]),
//         )
//       ])
//     ]);
// 
// 
// Icon(
//                         Icons.category,
//                       ),
//                       SizedBox(
//                         width: 6,
//                       ),
//                       Text(category),
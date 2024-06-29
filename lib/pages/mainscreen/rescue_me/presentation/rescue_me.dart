import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/application/rescue_me_controller.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/presentation/components/minimmap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';

class RescueMe extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RescueMeState();
}

class _RescueMeState extends ConsumerState<RescueMe> {
  late TextEditingController _fullnameController;
  late TextEditingController _mobileController;

  @override
  void initState() {
    super.initState();
    final authState = ref.read(authControllerProvider);
    _fullnameController = TextEditingController(
      text: authState is Authenticated ? authState.user.fullname : "",
    );
    _mobileController = TextEditingController(
      text: authState is Authenticated ? authState.user.mobile : "",
    );
  }

  @override
  void dispose() {
    _fullnameController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    final form = ref.watch(rescueMeControllerProvider);
    final formController = ref.watch(rescueMeControllerProvider.notifier);

    final List<String> selectableTypes = [
      "",
      AppLocalizations.of(context)!.mainRescueMeTypeMotorCycle,
      AppLocalizations.of(context)!.mainRescueMeTypeCar,
      AppLocalizations.of(context)!.mainRescueMeTypeBus,
      AppLocalizations.of(context)!.mainRescueMeTypeTruck,
      AppLocalizations.of(context)!.mainRescueMeTypeOther
    ];

    Future<void> _onSubmit(WidgetRef ref) async {
      final scaffoldMessenger = ScaffoldMessenger.of(ref.context);
      final controller = ref.read(rescueMeControllerProvider.notifier);
      try {
        final data = await controller.requestHelp(authState);
        scaffoldMessenger.showSnackBar(SnackBar(content: Text("Success")));
        // Navigator.of(context).pushReplacementNamed("/");
      } catch (e, s) {
        scaffoldMessenger.showSnackBar(SnackBar(content: Text('Fail')));
        print(e);
        print(s);
      }
    }

    Set<XFile> selectedImages = SplayTreeSet();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: 200,
            child: Minimmap(
                value: form.where, onChanged: formController.changePosition),
          ),
          // Text('${form.where?.latitude}, ${form.where?.longitude}'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      label: Text(
                          AppLocalizations.of(context)!.mainRescueMeFullname),
                      errorText: form.fullnameError
                          ? AppLocalizations.of(context)!
                              .mainRescueMeFullnameError
                          : null),
                  controller: _fullnameController,
                  onChanged: formController.changeFullname,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      // enabled: authState is Unauthenticated,
                      label: Text(
                          AppLocalizations.of(context)!.mainRescueMeMobile),
                      errorText: form.mobileError
                          ? AppLocalizations.of(context)!
                              .mainRescueMeMobileError
                          : null),
                  controller: _mobileController,
                  onChanged: formController.changeMobile,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButton(
                  value: form.type,
                  onChanged: formController.changeType,
                  hint: Text(AppLocalizations.of(context)!.mainRescueMeType),
                  items: selectableTypes
                      .map<DropdownMenuItem<String>>((String type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                ),
                // Text(form.type),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  minLines: 1,
                  maxLines: 6,
                  decoration: InputDecoration(
                    label:
                        Text(AppLocalizations.of(context)!.mainRescueMeDetails),
                    errorText: form.detailsError
                        ? AppLocalizations.of(context)!
                            .mainRescueMeDetailsMissing
                        : null,
                  ),
                  onChanged: formController.changeDetails,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final ImagePicker _picker = ImagePicker();
                      final XFile? image =
                          await _picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        setState(() {
                          selectedImages.add(File(image.path) as XFile);
                        });
                      }
                    },
                    child: Text("Create image")),
                ElevatedButton(
                    onPressed: () async {
                      final ImagePicker _picker = ImagePicker();
                      final List<XFile> _selected =
                          await _picker.pickMultiImage();
                      setState(() {
                        selectedImages = _selected
                            .map((image) => image)
                            .toSet();
                      });
                    },
                    child: Text("Pick image")),
                ElevatedButton(
                  onPressed: form.isValid ? () => _onSubmit(ref) : null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700]),
                  child: Text(
                    AppLocalizations.of(context)!.mainRescueMeRequestHelp,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

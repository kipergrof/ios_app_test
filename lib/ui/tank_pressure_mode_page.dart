import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test1/controllers/tpm_controller.dart';
import 'package:flutter_test1/proto/elvl.pbenum.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';
import '../controllers/global_controller.dart';

class TankPressureModePage extends GetView<TpmController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context1) {
      return CupertinoPageScaffold(
          child: Obx(
        () => ListView(
          children: [
            CupertinoFormSection.insetGrouped(
                header: const Text("Tank Pressure Mode"),
                backgroundColor: CupertinoColors.darkBackgroundGray,
                children: [
                  CupertinoListTile(
                      title: const Text("150 PSI"),
                      onTap: () {
                        controller.setTpm150();
                      },
                      trailing: controller
                                  .getEcuSettings()
                                  .value
                                  .settings
                                  .tpm ==
                              EcuSettingsTPM.TPM_SETTING_TO_PSI_150
                          ? const CupertinoActivityIndicator()
                          : controller.getEcuSettings().value.settings.tpm ==
                                  EcuSettingsTPM.TPM_PSI_150
                              ? const Icon(CupertinoIcons.checkmark_alt)
                              : null),
                  CupertinoListTile(
                      title: const Text("175 PSI"),
                      onTap: () {
                        controller.setTpm175();
                      },
                      trailing: controller
                                  .getEcuSettings()
                                  .value
                                  .settings
                                  .tpm ==
                              EcuSettingsTPM.TPM_SETTING_TO_PSI_175
                          ? const CupertinoActivityIndicator()
                          : controller.getEcuSettings().value.settings.tpm ==
                                  EcuSettingsTPM.TPM_PSI_175
                              ? const Icon(CupertinoIcons.checkmark_alt)
                              : null),
                  CupertinoListTile(
                      title: const Text("200 PSI"),
                      onTap: () {
                        controller.setTpm200();
                      },
                      trailing: controller
                                  .getEcuSettings()
                                  .value
                                  .settings
                                  .tpm ==
                              EcuSettingsTPM.TPM_SETTING_TO_PSI_200
                          ? const CupertinoActivityIndicator()
                          : controller.getEcuSettings().value.settings.tpm ==
                                  EcuSettingsTPM.TPM_PSI_200
                              ? const Icon(CupertinoIcons.checkmark_alt)
                              : null)
                ])
          ],
        ),
      ));
    });
  }
}

import 'package:flutter/cupertino.dart';
import '../proto/elvl.pb.dart';
import 'package:get/get.dart';

import '../controllers/global_controller.dart';
import '../controllers/settings_controller.dart';

enum SwitchState {
  set,
  reset,
  loading,
}

class SettingsPage extends GetView<SettingsController> {
  bool switchValue = false; // Variable to track the switch state
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context1) {
      return CupertinoPageScaffold(
          child: ListView(
        children: [
          CupertinoFormSection.insetGrouped(
            header: const Text("Connect"),
            backgroundColor: CupertinoColors.darkBackgroundGray,
            children: [
              Obx(() => _myListTile('Device',
                  status: controller.getBleDevStatus().value)),
            ],
          ),
          Obx(() => _ecuSettingslist(controller.getEcuSettings().value)),
        ],
      ));
    });
  }

  Widget _ecuSettingslist(GetEcuSettingResp ecu) {
/*     SwitchState rhos = SwitchState.loading;
    SwitchState rmm = SwitchState.loading;
    SwitchState tm = SwitchState.loading; */
    String rma = "N/A";
    String tpm = "N/A";
/* 
    switch (ecu.settings.rhos) {
      case EcuSettingsRHOS.RHOS_N_A:
        rhos = SwitchState.loading;
        break;
      case EcuSettingsRHOS.RHOS_OFF:
        rhos = SwitchState.reset;
        break;
      case EcuSettingsRHOS.RHOS_ON:
        rhos = SwitchState.set;
        break;
      default:
    }

    switch (ecu.settings.rmm) {
      case EcuSettingsRMM.RMM_N_A:
        rmm = SwitchState.loading;
        break;
      case EcuSettingsRMM.RMM_OFF:
        rmm = SwitchState.reset;
        break;
      case EcuSettingsRMM.RMM_OFF:
        rmm = SwitchState.set;
        break;
      default:
    }

    switch (ecu.settings.tm) {
      case EcuSettingsTM.TM_N_A:
        tm = SwitchState.loading;
        break;
      case EcuSettingsTM.TM_OFF:
        tm = SwitchState.reset;
        break;
      case EcuSettingsTM.TM_ON:
        tm = SwitchState.set;
        break;
      default:
    } */

    switch (ecu.settings.rma) {
      case EcuSettingsRMA.RMA_N_A:
        rma = "N/A";
        break;
      case EcuSettingsRMA.RMA_FACTORY:
      case EcuSettingsRMA.RMA_SETTING_TO_FACTORY:
        rma = "Factory";
        break;
      case EcuSettingsRMA.RMA_HIGHER_8:
      case EcuSettingsRMA.RMA_SETTING_TO_HIGHER_8:
        rma = "+8%";
        break;
      case EcuSettingsRMA.RMA_LOWER_15:
      case EcuSettingsRMA.RMA_SETTING_TO_LOWER_15:
        rma = "-15%";
        break;
      default:
    }

    switch (ecu.settings.tpm) {
      case EcuSettingsTPM.TPM_N_A:
        tpm = "N/A";
        break;
      case EcuSettingsTPM.TPM_PSI_150:
      case EcuSettingsTPM.TPM_SETTING_TO_PSI_150:
        tpm = "150 PSI";
        break;
      case EcuSettingsTPM.TPM_PSI_175:
      case EcuSettingsTPM.TPM_SETTING_TO_PSI_175:
        tpm = "175 PSI";
        break;
      case EcuSettingsTPM.TPM_PSI_200:
      case EcuSettingsTPM.TPM_SETTING_TO_PSI_200:
        tpm = "200 PSI";
        break;
      default:
    }
    if (controller.getBleDevStatus().value != BleDevStatus.connected) {
      return CupertinoFormSection.insetGrouped(
        header: const Text("ECU"),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        children: const [
          CupertinoListTile(
            title: Text("Communication"),
          ),
          CupertinoListTile(
            title: Text("Ride-Hieght-On-Start"),
          ),
          CupertinoListTile(
            title: Text("RideMonitor Mode"),
          ),
          CupertinoListTile(
            title: Text("Trim Mode"),
          ),
          CupertinoListTile(
            title: Text("Tank Presure Mode"),
          ),
          CupertinoListTile(
            title: Text("RideMonitor Mode Accuracy"),
          ),
        ],
      );
    }

    return CupertinoFormSection.insetGrouped(
        header: const Text("ECU"),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        children: [
           CupertinoListTile(
            title: const Text("Communication"),
            additionalInfo: ecu.communicationState ? const Text("OK"): const Text("Problem Detected"),
          ),
          CupertinoListTile(
            title: const Text("Ride-Hieght-On-Start"),
            trailing: (ecu.settings.rhos == EcuSettingsRHOS.RHOS_N_A ||
                    ecu.settings.rhos == EcuSettingsRHOS.RHOS_SETTING_TO_OFF ||
                    ecu.settings.rhos == EcuSettingsRHOS.RHOS_SETTING_TO_ON)
                ? const CupertinoActivityIndicator()
                : CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: ecu.settings.rhos == EcuSettingsRHOS.RHOS_OFF
                        ? false
                        : true,
                    onChanged: (bool? value) {
                      if (true == value) {
                        controller.setRhosOn();
                      } else {
                        controller.setRhosOff();
                      }
                      //  ecu.settings.rhos = EcuSettingsRHOS.RHOS_N_A;
                    },
                  ),
          ),
          CupertinoListTile(
            title: const Text("RideMonitor Mode"),
            trailing: (ecu.settings.rmm == EcuSettingsRMM.RMM_N_A ||
                    ecu.settings.rmm == EcuSettingsRMM.RMM_SETTING_TO_OFF ||
                    ecu.settings.rmm == EcuSettingsRMM.RMM_SETTING_TO_ON)
                ? const CupertinoActivityIndicator()
                : CupertinoSwitch(
                    // This bool value toggles the switch.
                    value: ecu.settings.rmm == EcuSettingsRMM.RMM_OFF
                        ? false
                        : true,
                    onChanged: (bool? value) {
                      if (true == value) {
                        controller.setRmmOn();
                      } else {
                        controller.setRmmOff();
                      }
                      //  ecu.settings.rmm == EcuSettingsRMM.RMM_N_A;
                    },
                  ),
          ),
          CupertinoListTile(
            title: const Text("Trim Mode"),
            trailing: (ecu.settings.tm == EcuSettingsTM.TM_N_A ||
                    ecu.settings.tm == EcuSettingsTM.TM_SETTING_TO_OFF ||
                    ecu.settings.tm == EcuSettingsTM.TM_SETTING_TO_ON)
                ? const CupertinoActivityIndicator()
                : CupertinoSwitch(
                    // This bool value toggles the switch.
                    value:
                        ecu.settings.tm == EcuSettingsTM.TM_OFF ? false : true,
                    onChanged: (bool? value) {
                      if (true == value) {
                        controller.setTmOn();
                      } else {
                        controller.setTmOff();
                      }
                      //  ecu.settings.tm == EcuSettingsTM.TM_N_A;
                    },
                  ),
          ),
          CupertinoListTile(
            title: const Text("Tank Presure Mode"),
            additionalInfo: (ecu.settings.tpm == EcuSettingsTPM.TPM_N_A) ||
                    (ecu.settings.tpm ==
                        EcuSettingsTPM.TPM_SETTING_TO_PSI_150) ||
                    (ecu.settings.tpm ==
                        EcuSettingsTPM.TPM_SETTING_TO_PSI_175) ||
                    (ecu.settings.tpm == EcuSettingsTPM.TPM_SETTING_TO_PSI_200)
                ? const CupertinoActivityIndicator()
                : Text(tpm),
            trailing: const Icon(
              CupertinoIcons.right_chevron,
              color: CupertinoColors.white,
            ),
            onTap: () async {
              await controller.goToTmpSettings();
            },
          ),
          CupertinoListTile(
            title: const Text("RideMonitor Mode Accuracy"),
            additionalInfo: (ecu.settings.rma == EcuSettingsRMA.RMA_N_A)
                ? const CupertinoActivityIndicator()
                : Text(rma),
            trailing: const Icon(
              CupertinoIcons.right_chevron,
              color: CupertinoColors.white,
            ),
          ),
        ]);
  }

  Widget getSwitch(SwitchState state) {
    switch (state) {
      case SwitchState.set:
        return CupertinoSwitch(
          // This bool value toggles the switch.
          value: true,
          onChanged: (bool? value) {},
        );
      case SwitchState.set:
        return CupertinoSwitch(
          // This bool value toggles the switch.
          value: false,
          onChanged: (bool? value) {},
        );

      default:
        return CupertinoActivityIndicator();
    }
  }

  Widget _myListTile(String title,
      {Function? function, BleDevStatus status = BleDevStatus.disconnected}) {
    String text = 'N/A';
    switch (status) {
      case BleDevStatus.disconnected:
        text = "Not Connected";
        break;
      case BleDevStatus.connected:
        text = controller.bleService.connectedDevice!.advName;
        break;
      case BleDevStatus.connecting:
        text = "Connecting...";
        break;

      default:
    }

    return CupertinoListTile(
      additionalInfo: Text(text),
      title: Text(title),

/*       leading: const Icon(
        CupertinoIcons.bluetooth,
        color: CupertinoColors.white,
      ), */
      trailing: const Icon(
        CupertinoIcons.right_chevron,
        color: CupertinoColors.white,
      ),
      onTap: () async {
        await controller.goToConnection();
        if (function != null) {
          print('asd');

          // await Get.to(() => BleConnectPage(), transition: Transition.rightToLeft,
          // curve: Curves.easeInOut
          // );
          /* () => function(); */
        }
      },
    );
  }
}

class DataModel {
  String? sCommand;
  String? sCommandDescription;
  int? acInputVoltage;
  int? acInputFrequency;
  double? acOutputVoltage;
  int? acOutputFrequency;
  int? acOutputApparentPower;
  int? acOutputActivePower;
  int? acOutputLoad;
  int? busVoltage;
  double? batteryVoltage;
  int? batteryChargingCurrent;
  int? batteryCapacity;
  int? inverterHeatSinkTemperature;
  int? pvInputCurrentForBattery;
  int? pvInputVoltage;
  int? batteryVoltageFromScc;
  int? batteryDischargeCurrent;
  int? isSbuPriorityVersionAdded;
  int? isConfigurationChanged;
  int? isSccFirmwareUpdated;
  int? isLoadOn;
  int? isBatteryVoltageToSteadyWhileCharging;
  int? isChargingOn;
  int? isSccChargingOn;
  int? isAcChargingOn;
  int? rsv1;
  int? rsv2;
  int? pvInputPower;
  int? isChargingToFloat;
  int? isSwitchedOn;
  int? isReserved;
  String? createAt;

  DataModel(
      {this.sCommand,
        this.sCommandDescription,
        this.acInputVoltage,
        this.acInputFrequency,
        this.acOutputVoltage,
        this.acOutputFrequency,
        this.acOutputApparentPower,
        this.acOutputActivePower,
        this.acOutputLoad,
        this.busVoltage,
        this.batteryVoltage,
        this.batteryChargingCurrent,
        this.batteryCapacity,
        this.inverterHeatSinkTemperature,
        this.pvInputCurrentForBattery,
        this.pvInputVoltage,
        this.batteryVoltageFromScc,
        this.batteryDischargeCurrent,
        this.isSbuPriorityVersionAdded,
        this.isConfigurationChanged,
        this.isSccFirmwareUpdated,
        this.isLoadOn,
        this.isBatteryVoltageToSteadyWhileCharging,
        this.isChargingOn,
        this.isSccChargingOn,
        this.isAcChargingOn,
        this.rsv1,
        this.rsv2,
        this.pvInputPower,
        this.isChargingToFloat,
        this.isSwitchedOn,
        this.isReserved,
        this.createAt});

  DataModel.fromJson(Map<String, dynamic> json) {
    sCommand = json['_command'];
    sCommandDescription = json['_command_description'];
    acInputVoltage = json['ac_input_voltage'];
    acInputFrequency = json['ac_input_frequency'];
    acOutputVoltage = json['ac_output_voltage'];
    acOutputFrequency = json['ac_output_frequency'];
    acOutputApparentPower = json['ac_output_apparent_power'];
    acOutputActivePower = json['ac_output_active_power'];
    acOutputLoad = json['ac_output_load'];
    busVoltage = json['bus_voltage'];
    batteryVoltage = json['battery_voltage'];
    batteryChargingCurrent = json['battery_charging_current'];
    batteryCapacity = json['battery_capacity'];
    inverterHeatSinkTemperature = json['inverter_heat_sink_temperature'];
    pvInputCurrentForBattery = json['pv_input_current_for_battery'];
    pvInputVoltage = json['pv_input_voltage'];
    batteryVoltageFromScc = json['battery_voltage_from_scc'];
    batteryDischargeCurrent = json['battery_discharge_current'];
    isSbuPriorityVersionAdded = json['is_sbu_priority_version_added'];
    isConfigurationChanged = json['is_configuration_changed'];
    isSccFirmwareUpdated = json['is_scc_firmware_updated'];
    isLoadOn = json['is_load_on'];
    isBatteryVoltageToSteadyWhileCharging =
    json['is_battery_voltage_to_steady_while_charging'];
    isChargingOn = json['is_charging_on'];
    isSccChargingOn = json['is_scc_charging_on'];
    isAcChargingOn = json['is_ac_charging_on'];
    rsv1 = json['rsv1'];
    rsv2 = json['rsv2'];
    pvInputPower = json['pv_input_power'];
    isChargingToFloat = json['is_charging_to_float'];
    isSwitchedOn = json['is_switched_on'];
    isReserved = json['is_reserved'];
    createAt = json['create at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_command'] = this.sCommand;
    data['_command_description'] = this.sCommandDescription;
    data['ac_input_voltage'] = this.acInputVoltage;
    data['ac_input_frequency'] = this.acInputFrequency;
    data['ac_output_voltage'] = this.acOutputVoltage;
    data['ac_output_frequency'] = this.acOutputFrequency;
    data['ac_output_apparent_power'] = this.acOutputApparentPower;
    data['ac_output_active_power'] = this.acOutputActivePower;
    data['ac_output_load'] = this.acOutputLoad;
    data['bus_voltage'] = this.busVoltage;
    data['battery_voltage'] = this.batteryVoltage;
    data['battery_charging_current'] = this.batteryChargingCurrent;
    data['battery_capacity'] = this.batteryCapacity;
    data['inverter_heat_sink_temperature'] = this.inverterHeatSinkTemperature;
    data['pv_input_current_for_battery'] = this.pvInputCurrentForBattery;
    data['pv_input_voltage'] = this.pvInputVoltage;
    data['battery_voltage_from_scc'] = this.batteryVoltageFromScc;
    data['battery_discharge_current'] = this.batteryDischargeCurrent;
    data['is_sbu_priority_version_added'] = this.isSbuPriorityVersionAdded;
    data['is_configuration_changed'] = this.isConfigurationChanged;
    data['is_scc_firmware_updated'] = this.isSccFirmwareUpdated;
    data['is_load_on'] = this.isLoadOn;
    data['is_battery_voltage_to_steady_while_charging'] =
        this.isBatteryVoltageToSteadyWhileCharging;
    data['is_charging_on'] = this.isChargingOn;
    data['is_scc_charging_on'] = this.isSccChargingOn;
    data['is_ac_charging_on'] = this.isAcChargingOn;
    data['rsv1'] = this.rsv1;
    data['rsv2'] = this.rsv2;
    data['pv_input_power'] = this.pvInputPower;
    data['is_charging_to_float'] = this.isChargingToFloat;
    data['is_switched_on'] = this.isSwitchedOn;
    data['is_reserved'] = this.isReserved;
    data['create at'] = this.createAt;
    return data;
  }
}
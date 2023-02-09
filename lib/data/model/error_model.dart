class ErrorModel {
  String? sCommand;
  String? sCommandDescription;
  String? inverterFault;
  String? busOverFault;
  String? busUnderFault;
  String? busSoftFailFault;
  String? lineFailWarning;
  String? opvShortWarning;
  String? inverterVoltageTooLowFault;
  String? inverterVoltageTooHighFault;
  String? overTemperatureFault;
  String? fanLockedFault;
  String? batteryVoltageToHighFault;
  String? batteryLowAlarmWarning;
  String? reserved;
  String? batteryUnderShutdownWarning;
  String? overloadFault;
  String? eepromFault;
  String? inverterOverCurrentFault;
  String? inverterSoftFailFault;
  String? selfTestFailFault;
  String? opDcVoltageOverFault;
  String? batOpenFault;
  String? currentSensorFailFault;
  String? batteryShortFault;
  String? powerLimitWarning;
  String? pvVoltageHighWarning;
  String? mpptOverloadFault;
  String? mpptOverloadWarning;
  String? batteryTooLowToChargeWarning;
  String? createAt;

  ErrorModel(
      {this.sCommand,
        this.sCommandDescription,
        this.inverterFault,
        this.busOverFault,
        this.busUnderFault,
        this.busSoftFailFault,
        this.lineFailWarning,
        this.opvShortWarning,
        this.inverterVoltageTooLowFault,
        this.inverterVoltageTooHighFault,
        this.overTemperatureFault,
        this.fanLockedFault,
        this.batteryVoltageToHighFault,
        this.batteryLowAlarmWarning,
        this.reserved,
        this.batteryUnderShutdownWarning,
        this.overloadFault,
        this.eepromFault,
        this.inverterOverCurrentFault,
        this.inverterSoftFailFault,
        this.selfTestFailFault,
        this.opDcVoltageOverFault,
        this.batOpenFault,
        this.currentSensorFailFault,
        this.batteryShortFault,
        this.powerLimitWarning,
        this.pvVoltageHighWarning,
        this.mpptOverloadFault,
        this.mpptOverloadWarning,
        this.batteryTooLowToChargeWarning,
        this.createAt});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    sCommand = json['_command'];
    sCommandDescription = json['_command_description'];
    inverterFault = json['inverter_fault'];
    busOverFault = json['bus_over_fault'];
    busUnderFault = json['bus_under_fault'];
    busSoftFailFault = json['bus_soft_fail_fault'];
    lineFailWarning = json['line_fail_warning'];
    opvShortWarning = json['opv_short_warning'];
    inverterVoltageTooLowFault = json['inverter_voltage_too_low_fault'];
    inverterVoltageTooHighFault = json['inverter_voltage_too_high_fault'];
    overTemperatureFault = json['over_temperature_fault'];
    fanLockedFault = json['fan_locked_fault'];
    batteryVoltageToHighFault = json['battery_voltage_to_high_fault'];
    batteryLowAlarmWarning = json['battery_low_alarm_warning'];
    reserved = json['reserved'];
    batteryUnderShutdownWarning = json['battery_under_shutdown_warning'];
    overloadFault = json['overload_fault'];
    eepromFault = json['eeprom_fault'];
    inverterOverCurrentFault = json['inverter_over_current_fault'];
    inverterSoftFailFault = json['inverter_soft_fail_fault'];
    selfTestFailFault = json['self_test_fail_fault'];
    opDcVoltageOverFault = json['op_dc_voltage_over_fault'];
    batOpenFault = json['bat_open_fault'];
    currentSensorFailFault = json['current_sensor_fail_fault'];
    batteryShortFault = json['battery_short_fault'];
    powerLimitWarning = json['power_limit_warning'];
    pvVoltageHighWarning = json['pv_voltage_high_warning'];
    mpptOverloadFault = json['mppt_overload_fault'];
    mpptOverloadWarning = json['mppt_overload_warning'];
    batteryTooLowToChargeWarning = json['battery_too_low_to_charge_warning'];
    createAt = json['create at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_command'] = this.sCommand;
    data['_command_description'] = this.sCommandDescription;
    data['inverter_fault'] = this.inverterFault;
    data['bus_over_fault'] = this.busOverFault;
    data['bus_under_fault'] = this.busUnderFault;
    data['bus_soft_fail_fault'] = this.busSoftFailFault;
    data['line_fail_warning'] = this.lineFailWarning;
    data['opv_short_warning'] = this.opvShortWarning;
    data['inverter_voltage_too_low_fault'] = this.inverterVoltageTooLowFault;
    data['inverter_voltage_too_high_fault'] = this.inverterVoltageTooHighFault;
    data['over_temperature_fault'] = this.overTemperatureFault;
    data['fan_locked_fault'] = this.fanLockedFault;
    data['battery_voltage_to_high_fault'] = this.batteryVoltageToHighFault;
    data['battery_low_alarm_warning'] = this.batteryLowAlarmWarning;
    data['reserved'] = this.reserved;
    data['battery_under_shutdown_warning'] = this.batteryUnderShutdownWarning;
    data['overload_fault'] = this.overloadFault;
    data['eeprom_fault'] = this.eepromFault;
    data['inverter_over_current_fault'] = this.inverterOverCurrentFault;
    data['inverter_soft_fail_fault'] = this.inverterSoftFailFault;
    data['self_test_fail_fault'] = this.selfTestFailFault;
    data['op_dc_voltage_over_fault'] = this.opDcVoltageOverFault;
    data['bat_open_fault'] = this.batOpenFault;
    data['current_sensor_fail_fault'] = this.currentSensorFailFault;
    data['battery_short_fault'] = this.batteryShortFault;
    data['power_limit_warning'] = this.powerLimitWarning;
    data['pv_voltage_high_warning'] = this.pvVoltageHighWarning;
    data['mppt_overload_fault'] = this.mpptOverloadFault;
    data['mppt_overload_warning'] = this.mpptOverloadWarning;
    data['battery_too_low_to_charge_warning'] =
        this.batteryTooLowToChargeWarning;
    data['create at'] = this.createAt;
    return data;
  }
}
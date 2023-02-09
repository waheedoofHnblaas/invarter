class SettingModel {
  String? sCommand;
  String? sCommandDescription;
  int? acInputVoltage;
  double? acInputCurrent;
  int? acOutputVoltage;
  int? acOutputFrequency;
  double? acOutputCurrent;
  int? acOutputApparentPower;
  int? acOutputActivePower;
  int? batteryVoltage;
  int? batteryRechargeVoltage;
  double? batteryUnderVoltage;
  double? batteryBulkChargeVoltage;
  int? batteryFloatChargeVoltage;
  String? batteryType;
  int? maxAcChargingCurrent;
  int? maxChargingCurrent;
  String? inputVoltageRange;
  String? outputSourcePriority;
  String? chargerSourcePriority;
  int? maxParallelUnits;
  String? machineType;
  String? topology;
  String? outputMode;
  int? batteryRedischargeVoltage;
  String? pvOkCondition;
  String? pvPowerBalance;
  String? createAt;

  SettingModel(
      {this.sCommand,
        this.sCommandDescription,
        this.acInputVoltage,
        this.acInputCurrent,
        this.acOutputVoltage,
        this.acOutputFrequency,
        this.acOutputCurrent,
        this.acOutputApparentPower,
        this.acOutputActivePower,
        this.batteryVoltage,
        this.batteryRechargeVoltage,
        this.batteryUnderVoltage,
        this.batteryBulkChargeVoltage,
        this.batteryFloatChargeVoltage,
        this.batteryType,
        this.maxAcChargingCurrent,
        this.maxChargingCurrent,
        this.inputVoltageRange,
        this.outputSourcePriority,
        this.chargerSourcePriority,
        this.maxParallelUnits,
        this.machineType,
        this.topology,
        this.outputMode,
        this.batteryRedischargeVoltage,
        this.pvOkCondition,
        this.pvPowerBalance,
        this.createAt});

  SettingModel.fromJson(Map<String, dynamic> json) {
    sCommand = json['_command'];
    sCommandDescription = json['_command_description'];
    acInputVoltage = json['ac_input_voltage'];
    acInputCurrent = json['ac_input_current'];
    acOutputVoltage = json['ac_output_voltage'];
    acOutputFrequency = json['ac_output_frequency'];
    acOutputCurrent = json['ac_output_current'];
    acOutputApparentPower = json['ac_output_apparent_power'];
    acOutputActivePower = json['ac_output_active_power'];
    batteryVoltage = json['battery_voltage'];
    batteryRechargeVoltage = json['battery_recharge_voltage'];
    batteryUnderVoltage = json['battery_under_voltage'];
    batteryBulkChargeVoltage = json['battery_bulk_charge_voltage'];
    batteryFloatChargeVoltage = json['battery_float_charge_voltage'];
    batteryType = json['battery_type'];
    maxAcChargingCurrent = json['max_ac_charging_current'];
    maxChargingCurrent = json['max_charging_current'];
    inputVoltageRange = json['input_voltage_range'];
    outputSourcePriority = json['output_source_priority'];
    chargerSourcePriority = json['charger_source_priority'];
    maxParallelUnits = json['max_parallel_units'];
    machineType = json['machine_type'];
    topology = json['topology'];
    outputMode = json['output_mode'];
    batteryRedischargeVoltage = json['battery_redischarge_voltage'];
    pvOkCondition = json['pv_ok_condition'];
    pvPowerBalance = json['pv_power_balance'];
    createAt = json['create at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_command'] = this.sCommand;
    data['_command_description'] = this.sCommandDescription;
    data['ac_input_voltage'] = this.acInputVoltage;
    data['ac_input_current'] = this.acInputCurrent;
    data['ac_output_voltage'] = this.acOutputVoltage;
    data['ac_output_frequency'] = this.acOutputFrequency;
    data['ac_output_current'] = this.acOutputCurrent;
    data['ac_output_apparent_power'] = this.acOutputApparentPower;
    data['ac_output_active_power'] = this.acOutputActivePower;
    data['battery_voltage'] = this.batteryVoltage;
    data['battery_recharge_voltage'] = this.batteryRechargeVoltage;
    data['battery_under_voltage'] = this.batteryUnderVoltage;
    data['battery_bulk_charge_voltage'] = this.batteryBulkChargeVoltage;
    data['battery_float_charge_voltage'] = this.batteryFloatChargeVoltage;
    data['battery_type'] = this.batteryType;
    data['max_ac_charging_current'] = this.maxAcChargingCurrent;
    data['max_charging_current'] = this.maxChargingCurrent;
    data['input_voltage_range'] = this.inputVoltageRange;
    data['output_source_priority'] = this.outputSourcePriority;
    data['charger_source_priority'] = this.chargerSourcePriority;
    data['max_parallel_units'] = this.maxParallelUnits;
    data['machine_type'] = this.machineType;
    data['topology'] = this.topology;
    data['output_mode'] = this.outputMode;
    data['battery_redischarge_voltage'] = this.batteryRedischargeVoltage;
    data['pv_ok_condition'] = this.pvOkCondition;
    data['pv_power_balance'] = this.pvPowerBalance;
    data['create at'] = this.createAt;
    return data;
  }
}
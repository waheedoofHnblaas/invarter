class InverterCommandsModel {
  bool? success;
  List<CommandModel>? commandList;

  InverterCommandsModel({this.success, this.commandList});

  InverterCommandsModel.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    if (json['command List'] != null) {
      commandList = <CommandModel>[];
      json['command List'].forEach((v) {
        commandList!.add(CommandModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Success'] = success;
    if (commandList != null) {
      data['command List'] = commandList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommandModel {
  int? id;
  String? commandShortcut;
  String? commandShortcutInSettings;
  String? commandNumberInCatelog;
  String? commandDescription;
  String? boundriesPrefix;
  Boundries? boundries;
  String? increamental;

  CommandModel(
      {this.id,
        this.commandShortcut,
        this.commandShortcutInSettings,
        this.commandNumberInCatelog,
        this.commandDescription,
        this.boundriesPrefix,
        this.boundries,
        this.increamental});

  CommandModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    commandShortcut = json['command_shortcut'];
    commandShortcutInSettings = json['command_shortcut_in_settings'];
    commandNumberInCatelog = json['command_number_in_catelog'];
    commandDescription = json['command_description'];
    boundriesPrefix = json['boundries_prefix'];
    boundries = json['boundries'] != null
        ? Boundries.fromJson(json['boundries'])
        : null;
    increamental = json['increamental'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['command_shortcut'] = commandShortcut;
    data['command_shortcut_in_settings'] = commandShortcutInSettings;
    data['command_number_in_catelog'] = commandNumberInCatelog;
    data['command_description'] = commandDescription;
    data['boundries_prefix'] = boundriesPrefix;
    if (boundries != null) {
      data['boundries'] = boundries!.toJson();
    }
    data['increamental'] = increamental;
    return data;
  }
}

class Boundries {
  var min;
  var max;
  Choices? choices;

  Boundries({this.min, this.max, this.choices});

  Boundries.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    max = json['max'];
    choices =
    json['choices'] != null ? Choices.fromJson(json['choices']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min'] = min;
    data['max'] = max;
    if (choices != null) {
      data['choices'] = choices!.toJson();
    }
    return data;
  }
}

class Choices {
  int? i2;
  int? i10;
  int? i20;
  int? i30;
  int? i40;
  int? i50;
  int? i60;
  String? fullCharge;
  String? aGM;
  String? fLOODED;
  String? userDefined;
  String? utilityFirst;
  String? solarFirst;
  String? solarAndUtility;
  String? solarOnlyCharging;
  String? enabled;
  String? disabled;
  String? appliance;
  String? uPS;
  String? setUtilityFirst;
  String? setSolarFirst;
  String? setSBUPriority;

  Choices(
      {this.i2,
        this.i10,
        this.i20,
        this.i30,
        this.i40,
        this.i50,
        this.i60,
        this.fullCharge,
        this.aGM,
        this.fLOODED,
        this.userDefined,
        this.utilityFirst,
        this.solarFirst,
        this.solarAndUtility,
        this.solarOnlyCharging,
        this.enabled,
        this.disabled,
        this.appliance,
        this.uPS,
        this.setUtilityFirst,
        this.setSolarFirst,
        this.setSBUPriority});

  Choices.fromJson(Map<String, dynamic> json) {
    i2 = json['2'];
    i10 = json['10'];
    i20 = json['20'];
    i30 = json['30'];
    i40 = json['40'];
    i50 = json['50'];
    i60 = json['60'];
    fullCharge = json['full charge'];
    aGM = json['AGM'];
    fLOODED = json['FLOODED'];
    userDefined = json['User-Defined'];
    utilityFirst = json['utility first'];
    solarFirst = json['solar first'];
    solarAndUtility = json['solar and utility'];
    solarOnlyCharging = json['solar only charging'];
    enabled = json['enabled'];
    disabled = json['disabled'];
    appliance = json['appliance'];
    uPS = json['UPS'];
    setUtilityFirst = json['set utility first'];
    setSolarFirst = json['set solar first'];
    setSBUPriority = json['set SBU priority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['2'] = i2;
    data['10'] = i10;
    data['20'] = i20;
    data['30'] = i30;
    data['40'] = i40;
    data['50'] = i50;
    data['60'] = i60;
    data['full charge'] = fullCharge;
    data['AGM'] = aGM;
    data['FLOODED'] = fLOODED;
    data['User-Defined'] = userDefined;
    data['utility first'] = utilityFirst;
    data['solar first'] = solarFirst;
    data['solar and utility'] = solarAndUtility;
    data['solar only charging'] = solarOnlyCharging;
    data['enabled'] = enabled;
    data['disabled'] = disabled;
    data['appliance'] = appliance;
    data['UPS'] = uPS;
    data['set utility first'] = setUtilityFirst;
    data['set solar first'] = setSolarFirst;
    data['set SBU priority'] = setSBUPriority;
    return data;
  }
}
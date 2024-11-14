// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderHistoryDataStruct extends BaseStruct {
  OrderHistoryDataStruct({
    String? id,
    String? sourceId,
    int? merchantId,
    String? city,
    int? shopId,
    int? channelId,
    String? channelTag,
    String? categoryId,
    String? sourceTag,
    int? sn,
    int? sourceSn,
    String? status,
    int? isSubscribe,
    int? isHand,
    String? realName,
    String? phone,
    String? phoneExtend,
    String? secretPhone,
    String? mapAddress,
    String? address,
    String? orderDate,
    int? orderTime,
    int? sendTime,
    String? userRemark,
    int? deliveryDistance,
    int? deliveryCtime,
    int? deliveryTime,
    int? deliveryEnd,
    int? isPrint,
    int? printNum,
    int? isPicker,
    int? isRemind,
    int? isCancel,
    int? cancelStatus,
    int? cancelTime,
    int? utime,
    int? ctime,
    int? totalPrice,
    int? balancePrice,
    int? finishedTime,
    String? extendCode,
    String? extra,
    String? systemRemark,
    int? remarkId,
    int? isTimeout,
    int? ignoreDelivery,
    int? deliveryType,
    int? mealStatus,
    int? mealTime,
    String? extend,
    int? isGroup,
    int? pid,
    int? delaySec,
    int? goodsNumber,
    int? goodsItemType,
    List<HistoryOrderGoodsStruct>? goods,
    HistoryOrderFeeStruct? fee,
    int? cancelType,
    String? fullSourceSn,
    int? girdId,
    HistoryOrderDeliveryStruct? delivery,
    List<HistoryOrderDeliveriesStruct>? deliveries,
    double? longitude,
    double? latitude,
    String? tips,
    String? gcj02Longitude,
    String? gcj02Latitude,
    String? channelTagName,
    HistoryOrderChannelStruct? channel,
    bool? mealBtnShow,
    int? mealType,
    int? mealCountdownTime,
    int? expressPrintCount,
    List<String>? orderTags,
    int? orderTagTipShow,
    String? production,
    HistoryOrderShopStruct? shop,
    List<String>? chain,
  })  : _id = id,
        _sourceId = sourceId,
        _merchantId = merchantId,
        _city = city,
        _shopId = shopId,
        _channelId = channelId,
        _channelTag = channelTag,
        _categoryId = categoryId,
        _sourceTag = sourceTag,
        _sn = sn,
        _sourceSn = sourceSn,
        _status = status,
        _isSubscribe = isSubscribe,
        _isHand = isHand,
        _realName = realName,
        _phone = phone,
        _phoneExtend = phoneExtend,
        _secretPhone = secretPhone,
        _mapAddress = mapAddress,
        _address = address,
        _orderDate = orderDate,
        _orderTime = orderTime,
        _sendTime = sendTime,
        _userRemark = userRemark,
        _deliveryDistance = deliveryDistance,
        _deliveryCtime = deliveryCtime,
        _deliveryTime = deliveryTime,
        _deliveryEnd = deliveryEnd,
        _isPrint = isPrint,
        _printNum = printNum,
        _isPicker = isPicker,
        _isRemind = isRemind,
        _isCancel = isCancel,
        _cancelStatus = cancelStatus,
        _cancelTime = cancelTime,
        _utime = utime,
        _ctime = ctime,
        _totalPrice = totalPrice,
        _balancePrice = balancePrice,
        _finishedTime = finishedTime,
        _extendCode = extendCode,
        _extra = extra,
        _systemRemark = systemRemark,
        _remarkId = remarkId,
        _isTimeout = isTimeout,
        _ignoreDelivery = ignoreDelivery,
        _deliveryType = deliveryType,
        _mealStatus = mealStatus,
        _mealTime = mealTime,
        _extend = extend,
        _isGroup = isGroup,
        _pid = pid,
        _delaySec = delaySec,
        _goodsNumber = goodsNumber,
        _goodsItemType = goodsItemType,
        _goods = goods,
        _fee = fee,
        _cancelType = cancelType,
        _fullSourceSn = fullSourceSn,
        _girdId = girdId,
        _delivery = delivery,
        _deliveries = deliveries,
        _longitude = longitude,
        _latitude = latitude,
        _tips = tips,
        _gcj02Longitude = gcj02Longitude,
        _gcj02Latitude = gcj02Latitude,
        _channelTagName = channelTagName,
        _channel = channel,
        _mealBtnShow = mealBtnShow,
        _mealType = mealType,
        _mealCountdownTime = mealCountdownTime,
        _expressPrintCount = expressPrintCount,
        _orderTags = orderTags,
        _orderTagTipShow = orderTagTipShow,
        _production = production,
        _shop = shop,
        _chain = chain;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "source_id" field.
  String? _sourceId;
  String get sourceId => _sourceId ?? '';
  set sourceId(String? val) => _sourceId = val;

  bool hasSourceId() => _sourceId != null;

  // "merchant_id" field.
  int? _merchantId;
  int get merchantId => _merchantId ?? 0;
  set merchantId(int? val) => _merchantId = val;

  void incrementMerchantId(int amount) => merchantId = merchantId + amount;

  bool hasMerchantId() => _merchantId != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "shop_id" field.
  int? _shopId;
  int get shopId => _shopId ?? 0;
  set shopId(int? val) => _shopId = val;

  void incrementShopId(int amount) => shopId = shopId + amount;

  bool hasShopId() => _shopId != null;

  // "channel_id" field.
  int? _channelId;
  int get channelId => _channelId ?? 0;
  set channelId(int? val) => _channelId = val;

  void incrementChannelId(int amount) => channelId = channelId + amount;

  bool hasChannelId() => _channelId != null;

  // "channel_tag" field.
  String? _channelTag;
  String get channelTag => _channelTag ?? '';
  set channelTag(String? val) => _channelTag = val;

  bool hasChannelTag() => _channelTag != null;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "source_tag" field.
  String? _sourceTag;
  String get sourceTag => _sourceTag ?? '';
  set sourceTag(String? val) => _sourceTag = val;

  bool hasSourceTag() => _sourceTag != null;

  // "sn" field.
  int? _sn;
  int get sn => _sn ?? 0;
  set sn(int? val) => _sn = val;

  void incrementSn(int amount) => sn = sn + amount;

  bool hasSn() => _sn != null;

  // "source_sn" field.
  int? _sourceSn;
  int get sourceSn => _sourceSn ?? 0;
  set sourceSn(int? val) => _sourceSn = val;

  void incrementSourceSn(int amount) => sourceSn = sourceSn + amount;

  bool hasSourceSn() => _sourceSn != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "is_subscribe" field.
  int? _isSubscribe;
  int get isSubscribe => _isSubscribe ?? 0;
  set isSubscribe(int? val) => _isSubscribe = val;

  void incrementIsSubscribe(int amount) => isSubscribe = isSubscribe + amount;

  bool hasIsSubscribe() => _isSubscribe != null;

  // "is_hand" field.
  int? _isHand;
  int get isHand => _isHand ?? 0;
  set isHand(int? val) => _isHand = val;

  void incrementIsHand(int amount) => isHand = isHand + amount;

  bool hasIsHand() => _isHand != null;

  // "real_name" field.
  String? _realName;
  String get realName => _realName ?? '';
  set realName(String? val) => _realName = val;

  bool hasRealName() => _realName != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "phone_extend" field.
  String? _phoneExtend;
  String get phoneExtend => _phoneExtend ?? '';
  set phoneExtend(String? val) => _phoneExtend = val;

  bool hasPhoneExtend() => _phoneExtend != null;

  // "secret_phone" field.
  String? _secretPhone;
  String get secretPhone => _secretPhone ?? '';
  set secretPhone(String? val) => _secretPhone = val;

  bool hasSecretPhone() => _secretPhone != null;

  // "map_address" field.
  String? _mapAddress;
  String get mapAddress => _mapAddress ?? '';
  set mapAddress(String? val) => _mapAddress = val;

  bool hasMapAddress() => _mapAddress != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "order_date" field.
  String? _orderDate;
  String get orderDate => _orderDate ?? '';
  set orderDate(String? val) => _orderDate = val;

  bool hasOrderDate() => _orderDate != null;

  // "order_time" field.
  int? _orderTime;
  int get orderTime => _orderTime ?? 0;
  set orderTime(int? val) => _orderTime = val;

  void incrementOrderTime(int amount) => orderTime = orderTime + amount;

  bool hasOrderTime() => _orderTime != null;

  // "send_time" field.
  int? _sendTime;
  int get sendTime => _sendTime ?? 0;
  set sendTime(int? val) => _sendTime = val;

  void incrementSendTime(int amount) => sendTime = sendTime + amount;

  bool hasSendTime() => _sendTime != null;

  // "user_remark" field.
  String? _userRemark;
  String get userRemark => _userRemark ?? '';
  set userRemark(String? val) => _userRemark = val;

  bool hasUserRemark() => _userRemark != null;

  // "delivery_distance" field.
  int? _deliveryDistance;
  int get deliveryDistance => _deliveryDistance ?? 0;
  set deliveryDistance(int? val) => _deliveryDistance = val;

  void incrementDeliveryDistance(int amount) =>
      deliveryDistance = deliveryDistance + amount;

  bool hasDeliveryDistance() => _deliveryDistance != null;

  // "delivery_ctime" field.
  int? _deliveryCtime;
  int get deliveryCtime => _deliveryCtime ?? 0;
  set deliveryCtime(int? val) => _deliveryCtime = val;

  void incrementDeliveryCtime(int amount) =>
      deliveryCtime = deliveryCtime + amount;

  bool hasDeliveryCtime() => _deliveryCtime != null;

  // "delivery_time" field.
  int? _deliveryTime;
  int get deliveryTime => _deliveryTime ?? 0;
  set deliveryTime(int? val) => _deliveryTime = val;

  void incrementDeliveryTime(int amount) =>
      deliveryTime = deliveryTime + amount;

  bool hasDeliveryTime() => _deliveryTime != null;

  // "delivery_end" field.
  int? _deliveryEnd;
  int get deliveryEnd => _deliveryEnd ?? 0;
  set deliveryEnd(int? val) => _deliveryEnd = val;

  void incrementDeliveryEnd(int amount) => deliveryEnd = deliveryEnd + amount;

  bool hasDeliveryEnd() => _deliveryEnd != null;

  // "is_print" field.
  int? _isPrint;
  int get isPrint => _isPrint ?? 0;
  set isPrint(int? val) => _isPrint = val;

  void incrementIsPrint(int amount) => isPrint = isPrint + amount;

  bool hasIsPrint() => _isPrint != null;

  // "print_num" field.
  int? _printNum;
  int get printNum => _printNum ?? 0;
  set printNum(int? val) => _printNum = val;

  void incrementPrintNum(int amount) => printNum = printNum + amount;

  bool hasPrintNum() => _printNum != null;

  // "is_picker" field.
  int? _isPicker;
  int get isPicker => _isPicker ?? 0;
  set isPicker(int? val) => _isPicker = val;

  void incrementIsPicker(int amount) => isPicker = isPicker + amount;

  bool hasIsPicker() => _isPicker != null;

  // "is_remind" field.
  int? _isRemind;
  int get isRemind => _isRemind ?? 0;
  set isRemind(int? val) => _isRemind = val;

  void incrementIsRemind(int amount) => isRemind = isRemind + amount;

  bool hasIsRemind() => _isRemind != null;

  // "is_cancel" field.
  int? _isCancel;
  int get isCancel => _isCancel ?? 0;
  set isCancel(int? val) => _isCancel = val;

  void incrementIsCancel(int amount) => isCancel = isCancel + amount;

  bool hasIsCancel() => _isCancel != null;

  // "cancel_status" field.
  int? _cancelStatus;
  int get cancelStatus => _cancelStatus ?? 0;
  set cancelStatus(int? val) => _cancelStatus = val;

  void incrementCancelStatus(int amount) =>
      cancelStatus = cancelStatus + amount;

  bool hasCancelStatus() => _cancelStatus != null;

  // "cancel_time" field.
  int? _cancelTime;
  int get cancelTime => _cancelTime ?? 0;
  set cancelTime(int? val) => _cancelTime = val;

  void incrementCancelTime(int amount) => cancelTime = cancelTime + amount;

  bool hasCancelTime() => _cancelTime != null;

  // "utime" field.
  int? _utime;
  int get utime => _utime ?? 0;
  set utime(int? val) => _utime = val;

  void incrementUtime(int amount) => utime = utime + amount;

  bool hasUtime() => _utime != null;

  // "ctime" field.
  int? _ctime;
  int get ctime => _ctime ?? 0;
  set ctime(int? val) => _ctime = val;

  void incrementCtime(int amount) => ctime = ctime + amount;

  bool hasCtime() => _ctime != null;

  // "total_price" field.
  int? _totalPrice;
  int get totalPrice => _totalPrice ?? 0;
  set totalPrice(int? val) => _totalPrice = val;

  void incrementTotalPrice(int amount) => totalPrice = totalPrice + amount;

  bool hasTotalPrice() => _totalPrice != null;

  // "balance_price" field.
  int? _balancePrice;
  int get balancePrice => _balancePrice ?? 0;
  set balancePrice(int? val) => _balancePrice = val;

  void incrementBalancePrice(int amount) =>
      balancePrice = balancePrice + amount;

  bool hasBalancePrice() => _balancePrice != null;

  // "finished_time" field.
  int? _finishedTime;
  int get finishedTime => _finishedTime ?? 0;
  set finishedTime(int? val) => _finishedTime = val;

  void incrementFinishedTime(int amount) =>
      finishedTime = finishedTime + amount;

  bool hasFinishedTime() => _finishedTime != null;

  // "extend_code" field.
  String? _extendCode;
  String get extendCode => _extendCode ?? '';
  set extendCode(String? val) => _extendCode = val;

  bool hasExtendCode() => _extendCode != null;

  // "extra" field.
  String? _extra;
  String get extra => _extra ?? '';
  set extra(String? val) => _extra = val;

  bool hasExtra() => _extra != null;

  // "system_remark" field.
  String? _systemRemark;
  String get systemRemark => _systemRemark ?? '';
  set systemRemark(String? val) => _systemRemark = val;

  bool hasSystemRemark() => _systemRemark != null;

  // "remark_id" field.
  int? _remarkId;
  int get remarkId => _remarkId ?? 0;
  set remarkId(int? val) => _remarkId = val;

  void incrementRemarkId(int amount) => remarkId = remarkId + amount;

  bool hasRemarkId() => _remarkId != null;

  // "is_timeout" field.
  int? _isTimeout;
  int get isTimeout => _isTimeout ?? 0;
  set isTimeout(int? val) => _isTimeout = val;

  void incrementIsTimeout(int amount) => isTimeout = isTimeout + amount;

  bool hasIsTimeout() => _isTimeout != null;

  // "ignore_delivery" field.
  int? _ignoreDelivery;
  int get ignoreDelivery => _ignoreDelivery ?? 0;
  set ignoreDelivery(int? val) => _ignoreDelivery = val;

  void incrementIgnoreDelivery(int amount) =>
      ignoreDelivery = ignoreDelivery + amount;

  bool hasIgnoreDelivery() => _ignoreDelivery != null;

  // "delivery_type" field.
  int? _deliveryType;
  int get deliveryType => _deliveryType ?? 0;
  set deliveryType(int? val) => _deliveryType = val;

  void incrementDeliveryType(int amount) =>
      deliveryType = deliveryType + amount;

  bool hasDeliveryType() => _deliveryType != null;

  // "meal_status" field.
  int? _mealStatus;
  int get mealStatus => _mealStatus ?? 0;
  set mealStatus(int? val) => _mealStatus = val;

  void incrementMealStatus(int amount) => mealStatus = mealStatus + amount;

  bool hasMealStatus() => _mealStatus != null;

  // "meal_time" field.
  int? _mealTime;
  int get mealTime => _mealTime ?? 0;
  set mealTime(int? val) => _mealTime = val;

  void incrementMealTime(int amount) => mealTime = mealTime + amount;

  bool hasMealTime() => _mealTime != null;

  // "extend" field.
  String? _extend;
  String get extend => _extend ?? '';
  set extend(String? val) => _extend = val;

  bool hasExtend() => _extend != null;

  // "is_group" field.
  int? _isGroup;
  int get isGroup => _isGroup ?? 0;
  set isGroup(int? val) => _isGroup = val;

  void incrementIsGroup(int amount) => isGroup = isGroup + amount;

  bool hasIsGroup() => _isGroup != null;

  // "pid" field.
  int? _pid;
  int get pid => _pid ?? 0;
  set pid(int? val) => _pid = val;

  void incrementPid(int amount) => pid = pid + amount;

  bool hasPid() => _pid != null;

  // "delay_sec" field.
  int? _delaySec;
  int get delaySec => _delaySec ?? 0;
  set delaySec(int? val) => _delaySec = val;

  void incrementDelaySec(int amount) => delaySec = delaySec + amount;

  bool hasDelaySec() => _delaySec != null;

  // "goods_number" field.
  int? _goodsNumber;
  int get goodsNumber => _goodsNumber ?? 0;
  set goodsNumber(int? val) => _goodsNumber = val;

  void incrementGoodsNumber(int amount) => goodsNumber = goodsNumber + amount;

  bool hasGoodsNumber() => _goodsNumber != null;

  // "goods_item_type" field.
  int? _goodsItemType;
  int get goodsItemType => _goodsItemType ?? 0;
  set goodsItemType(int? val) => _goodsItemType = val;

  void incrementGoodsItemType(int amount) =>
      goodsItemType = goodsItemType + amount;

  bool hasGoodsItemType() => _goodsItemType != null;

  // "goods" field.
  List<HistoryOrderGoodsStruct>? _goods;
  List<HistoryOrderGoodsStruct> get goods => _goods ?? const [];
  set goods(List<HistoryOrderGoodsStruct>? val) => _goods = val;

  void updateGoods(Function(List<HistoryOrderGoodsStruct>) updateFn) {
    updateFn(_goods ??= []);
  }

  bool hasGoods() => _goods != null;

  // "fee" field.
  HistoryOrderFeeStruct? _fee;
  HistoryOrderFeeStruct get fee => _fee ?? HistoryOrderFeeStruct();
  set fee(HistoryOrderFeeStruct? val) => _fee = val;

  void updateFee(Function(HistoryOrderFeeStruct) updateFn) {
    updateFn(_fee ??= HistoryOrderFeeStruct());
  }

  bool hasFee() => _fee != null;

  // "cancel_type" field.
  int? _cancelType;
  int get cancelType => _cancelType ?? 0;
  set cancelType(int? val) => _cancelType = val;

  void incrementCancelType(int amount) => cancelType = cancelType + amount;

  bool hasCancelType() => _cancelType != null;

  // "full_source_sn" field.
  String? _fullSourceSn;
  String get fullSourceSn => _fullSourceSn ?? '';
  set fullSourceSn(String? val) => _fullSourceSn = val;

  bool hasFullSourceSn() => _fullSourceSn != null;

  // "gird_id" field.
  int? _girdId;
  int get girdId => _girdId ?? 0;
  set girdId(int? val) => _girdId = val;

  void incrementGirdId(int amount) => girdId = girdId + amount;

  bool hasGirdId() => _girdId != null;

  // "delivery" field.
  HistoryOrderDeliveryStruct? _delivery;
  HistoryOrderDeliveryStruct get delivery =>
      _delivery ?? HistoryOrderDeliveryStruct();
  set delivery(HistoryOrderDeliveryStruct? val) => _delivery = val;

  void updateDelivery(Function(HistoryOrderDeliveryStruct) updateFn) {
    updateFn(_delivery ??= HistoryOrderDeliveryStruct());
  }

  bool hasDelivery() => _delivery != null;

  // "deliveries" field.
  List<HistoryOrderDeliveriesStruct>? _deliveries;
  List<HistoryOrderDeliveriesStruct> get deliveries => _deliveries ?? const [];
  set deliveries(List<HistoryOrderDeliveriesStruct>? val) => _deliveries = val;

  void updateDeliveries(Function(List<HistoryOrderDeliveriesStruct>) updateFn) {
    updateFn(_deliveries ??= []);
  }

  bool hasDeliveries() => _deliveries != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "tips" field.
  String? _tips;
  String get tips => _tips ?? '';
  set tips(String? val) => _tips = val;

  bool hasTips() => _tips != null;

  // "gcj02_longitude" field.
  String? _gcj02Longitude;
  String get gcj02Longitude => _gcj02Longitude ?? '';
  set gcj02Longitude(String? val) => _gcj02Longitude = val;

  bool hasGcj02Longitude() => _gcj02Longitude != null;

  // "gcj02_latitude" field.
  String? _gcj02Latitude;
  String get gcj02Latitude => _gcj02Latitude ?? '';
  set gcj02Latitude(String? val) => _gcj02Latitude = val;

  bool hasGcj02Latitude() => _gcj02Latitude != null;

  // "channel_tag_name" field.
  String? _channelTagName;
  String get channelTagName => _channelTagName ?? '';
  set channelTagName(String? val) => _channelTagName = val;

  bool hasChannelTagName() => _channelTagName != null;

  // "channel" field.
  HistoryOrderChannelStruct? _channel;
  HistoryOrderChannelStruct get channel =>
      _channel ?? HistoryOrderChannelStruct();
  set channel(HistoryOrderChannelStruct? val) => _channel = val;

  void updateChannel(Function(HistoryOrderChannelStruct) updateFn) {
    updateFn(_channel ??= HistoryOrderChannelStruct());
  }

  bool hasChannel() => _channel != null;

  // "meal_btn_show" field.
  bool? _mealBtnShow;
  bool get mealBtnShow => _mealBtnShow ?? false;
  set mealBtnShow(bool? val) => _mealBtnShow = val;

  bool hasMealBtnShow() => _mealBtnShow != null;

  // "meal_type" field.
  int? _mealType;
  int get mealType => _mealType ?? 0;
  set mealType(int? val) => _mealType = val;

  void incrementMealType(int amount) => mealType = mealType + amount;

  bool hasMealType() => _mealType != null;

  // "meal_countdown_time" field.
  int? _mealCountdownTime;
  int get mealCountdownTime => _mealCountdownTime ?? 0;
  set mealCountdownTime(int? val) => _mealCountdownTime = val;

  void incrementMealCountdownTime(int amount) =>
      mealCountdownTime = mealCountdownTime + amount;

  bool hasMealCountdownTime() => _mealCountdownTime != null;

  // "express_print_count" field.
  int? _expressPrintCount;
  int get expressPrintCount => _expressPrintCount ?? 0;
  set expressPrintCount(int? val) => _expressPrintCount = val;

  void incrementExpressPrintCount(int amount) =>
      expressPrintCount = expressPrintCount + amount;

  bool hasExpressPrintCount() => _expressPrintCount != null;

  // "order_tags" field.
  List<String>? _orderTags;
  List<String> get orderTags => _orderTags ?? const [];
  set orderTags(List<String>? val) => _orderTags = val;

  void updateOrderTags(Function(List<String>) updateFn) {
    updateFn(_orderTags ??= []);
  }

  bool hasOrderTags() => _orderTags != null;

  // "order_tag_tip_show" field.
  int? _orderTagTipShow;
  int get orderTagTipShow => _orderTagTipShow ?? 0;
  set orderTagTipShow(int? val) => _orderTagTipShow = val;

  void incrementOrderTagTipShow(int amount) =>
      orderTagTipShow = orderTagTipShow + amount;

  bool hasOrderTagTipShow() => _orderTagTipShow != null;

  // "production" field.
  String? _production;
  String get production => _production ?? '';
  set production(String? val) => _production = val;

  bool hasProduction() => _production != null;

  // "shop" field.
  HistoryOrderShopStruct? _shop;
  HistoryOrderShopStruct get shop => _shop ?? HistoryOrderShopStruct();
  set shop(HistoryOrderShopStruct? val) => _shop = val;

  void updateShop(Function(HistoryOrderShopStruct) updateFn) {
    updateFn(_shop ??= HistoryOrderShopStruct());
  }

  bool hasShop() => _shop != null;

  // "chain" field.
  List<String>? _chain;
  List<String> get chain => _chain ?? const [];
  set chain(List<String>? val) => _chain = val;

  void updateChain(Function(List<String>) updateFn) {
    updateFn(_chain ??= []);
  }

  bool hasChain() => _chain != null;

  static OrderHistoryDataStruct fromMap(Map<String, dynamic> data) =>
      OrderHistoryDataStruct(
        id: data['id'] as String?,
        sourceId: data['source_id'] as String?,
        merchantId: castToType<int>(data['merchant_id']),
        city: data['city'] as String?,
        shopId: castToType<int>(data['shop_id']),
        channelId: castToType<int>(data['channel_id']),
        channelTag: data['channel_tag'] as String?,
        categoryId: data['category_id'] as String?,
        sourceTag: data['source_tag'] as String?,
        sn: castToType<int>(data['sn']),
        sourceSn: castToType<int>(data['source_sn']),
        status: data['status'] as String?,
        isSubscribe: castToType<int>(data['is_subscribe']),
        isHand: castToType<int>(data['is_hand']),
        realName: data['real_name'] as String?,
        phone: data['phone'] as String?,
        phoneExtend: data['phone_extend'] as String?,
        secretPhone: data['secret_phone'] as String?,
        mapAddress: data['map_address'] as String?,
        address: data['address'] as String?,
        orderDate: data['order_date'] as String?,
        orderTime: castToType<int>(data['order_time']),
        sendTime: castToType<int>(data['send_time']),
        userRemark: data['user_remark'] as String?,
        deliveryDistance: castToType<int>(data['delivery_distance']),
        deliveryCtime: castToType<int>(data['delivery_ctime']),
        deliveryTime: castToType<int>(data['delivery_time']),
        deliveryEnd: castToType<int>(data['delivery_end']),
        isPrint: castToType<int>(data['is_print']),
        printNum: castToType<int>(data['print_num']),
        isPicker: castToType<int>(data['is_picker']),
        isRemind: castToType<int>(data['is_remind']),
        isCancel: castToType<int>(data['is_cancel']),
        cancelStatus: castToType<int>(data['cancel_status']),
        cancelTime: castToType<int>(data['cancel_time']),
        utime: castToType<int>(data['utime']),
        ctime: castToType<int>(data['ctime']),
        totalPrice: castToType<int>(data['total_price']),
        balancePrice: castToType<int>(data['balance_price']),
        finishedTime: castToType<int>(data['finished_time']),
        extendCode: data['extend_code'] as String?,
        extra: data['extra'] as String?,
        systemRemark: data['system_remark'] as String?,
        remarkId: castToType<int>(data['remark_id']),
        isTimeout: castToType<int>(data['is_timeout']),
        ignoreDelivery: castToType<int>(data['ignore_delivery']),
        deliveryType: castToType<int>(data['delivery_type']),
        mealStatus: castToType<int>(data['meal_status']),
        mealTime: castToType<int>(data['meal_time']),
        extend: data['extend'] as String?,
        isGroup: castToType<int>(data['is_group']),
        pid: castToType<int>(data['pid']),
        delaySec: castToType<int>(data['delay_sec']),
        goodsNumber: castToType<int>(data['goods_number']),
        goodsItemType: castToType<int>(data['goods_item_type']),
        goods: getStructList(
          data['goods'],
          HistoryOrderGoodsStruct.fromMap,
        ),
        fee: HistoryOrderFeeStruct.maybeFromMap(data['fee']),
        cancelType: castToType<int>(data['cancel_type']),
        fullSourceSn: data['full_source_sn'] as String?,
        girdId: castToType<int>(data['gird_id']),
        delivery: HistoryOrderDeliveryStruct.maybeFromMap(data['delivery']),
        deliveries: getStructList(
          data['deliveries'],
          HistoryOrderDeliveriesStruct.fromMap,
        ),
        longitude: castToType<double>(data['longitude']),
        latitude: castToType<double>(data['latitude']),
        tips: data['tips'] as String?,
        gcj02Longitude: data['gcj02_longitude'] as String?,
        gcj02Latitude: data['gcj02_latitude'] as String?,
        channelTagName: data['channel_tag_name'] as String?,
        channel: HistoryOrderChannelStruct.maybeFromMap(data['channel']),
        mealBtnShow: data['meal_btn_show'] as bool?,
        mealType: castToType<int>(data['meal_type']),
        mealCountdownTime: castToType<int>(data['meal_countdown_time']),
        expressPrintCount: castToType<int>(data['express_print_count']),
        orderTags: getDataList(data['order_tags']),
        orderTagTipShow: castToType<int>(data['order_tag_tip_show']),
        production: data['production'] as String?,
        shop: HistoryOrderShopStruct.maybeFromMap(data['shop']),
        chain: getDataList(data['chain']),
      );

  static OrderHistoryDataStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderHistoryDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'source_id': _sourceId,
        'merchant_id': _merchantId,
        'city': _city,
        'shop_id': _shopId,
        'channel_id': _channelId,
        'channel_tag': _channelTag,
        'category_id': _categoryId,
        'source_tag': _sourceTag,
        'sn': _sn,
        'source_sn': _sourceSn,
        'status': _status,
        'is_subscribe': _isSubscribe,
        'is_hand': _isHand,
        'real_name': _realName,
        'phone': _phone,
        'phone_extend': _phoneExtend,
        'secret_phone': _secretPhone,
        'map_address': _mapAddress,
        'address': _address,
        'order_date': _orderDate,
        'order_time': _orderTime,
        'send_time': _sendTime,
        'user_remark': _userRemark,
        'delivery_distance': _deliveryDistance,
        'delivery_ctime': _deliveryCtime,
        'delivery_time': _deliveryTime,
        'delivery_end': _deliveryEnd,
        'is_print': _isPrint,
        'print_num': _printNum,
        'is_picker': _isPicker,
        'is_remind': _isRemind,
        'is_cancel': _isCancel,
        'cancel_status': _cancelStatus,
        'cancel_time': _cancelTime,
        'utime': _utime,
        'ctime': _ctime,
        'total_price': _totalPrice,
        'balance_price': _balancePrice,
        'finished_time': _finishedTime,
        'extend_code': _extendCode,
        'extra': _extra,
        'system_remark': _systemRemark,
        'remark_id': _remarkId,
        'is_timeout': _isTimeout,
        'ignore_delivery': _ignoreDelivery,
        'delivery_type': _deliveryType,
        'meal_status': _mealStatus,
        'meal_time': _mealTime,
        'extend': _extend,
        'is_group': _isGroup,
        'pid': _pid,
        'delay_sec': _delaySec,
        'goods_number': _goodsNumber,
        'goods_item_type': _goodsItemType,
        'goods': _goods?.map((e) => e.toMap()).toList(),
        'fee': _fee?.toMap(),
        'cancel_type': _cancelType,
        'full_source_sn': _fullSourceSn,
        'gird_id': _girdId,
        'delivery': _delivery?.toMap(),
        'deliveries': _deliveries?.map((e) => e.toMap()).toList(),
        'longitude': _longitude,
        'latitude': _latitude,
        'tips': _tips,
        'gcj02_longitude': _gcj02Longitude,
        'gcj02_latitude': _gcj02Latitude,
        'channel_tag_name': _channelTagName,
        'channel': _channel?.toMap(),
        'meal_btn_show': _mealBtnShow,
        'meal_type': _mealType,
        'meal_countdown_time': _mealCountdownTime,
        'express_print_count': _expressPrintCount,
        'order_tags': _orderTags,
        'order_tag_tip_show': _orderTagTipShow,
        'production': _production,
        'shop': _shop?.toMap(),
        'chain': _chain,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'source_id': serializeParam(
          _sourceId,
          ParamType.String,
        ),
        'merchant_id': serializeParam(
          _merchantId,
          ParamType.int,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'shop_id': serializeParam(
          _shopId,
          ParamType.int,
        ),
        'channel_id': serializeParam(
          _channelId,
          ParamType.int,
        ),
        'channel_tag': serializeParam(
          _channelTag,
          ParamType.String,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'source_tag': serializeParam(
          _sourceTag,
          ParamType.String,
        ),
        'sn': serializeParam(
          _sn,
          ParamType.int,
        ),
        'source_sn': serializeParam(
          _sourceSn,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'is_subscribe': serializeParam(
          _isSubscribe,
          ParamType.int,
        ),
        'is_hand': serializeParam(
          _isHand,
          ParamType.int,
        ),
        'real_name': serializeParam(
          _realName,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'phone_extend': serializeParam(
          _phoneExtend,
          ParamType.String,
        ),
        'secret_phone': serializeParam(
          _secretPhone,
          ParamType.String,
        ),
        'map_address': serializeParam(
          _mapAddress,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'order_date': serializeParam(
          _orderDate,
          ParamType.String,
        ),
        'order_time': serializeParam(
          _orderTime,
          ParamType.int,
        ),
        'send_time': serializeParam(
          _sendTime,
          ParamType.int,
        ),
        'user_remark': serializeParam(
          _userRemark,
          ParamType.String,
        ),
        'delivery_distance': serializeParam(
          _deliveryDistance,
          ParamType.int,
        ),
        'delivery_ctime': serializeParam(
          _deliveryCtime,
          ParamType.int,
        ),
        'delivery_time': serializeParam(
          _deliveryTime,
          ParamType.int,
        ),
        'delivery_end': serializeParam(
          _deliveryEnd,
          ParamType.int,
        ),
        'is_print': serializeParam(
          _isPrint,
          ParamType.int,
        ),
        'print_num': serializeParam(
          _printNum,
          ParamType.int,
        ),
        'is_picker': serializeParam(
          _isPicker,
          ParamType.int,
        ),
        'is_remind': serializeParam(
          _isRemind,
          ParamType.int,
        ),
        'is_cancel': serializeParam(
          _isCancel,
          ParamType.int,
        ),
        'cancel_status': serializeParam(
          _cancelStatus,
          ParamType.int,
        ),
        'cancel_time': serializeParam(
          _cancelTime,
          ParamType.int,
        ),
        'utime': serializeParam(
          _utime,
          ParamType.int,
        ),
        'ctime': serializeParam(
          _ctime,
          ParamType.int,
        ),
        'total_price': serializeParam(
          _totalPrice,
          ParamType.int,
        ),
        'balance_price': serializeParam(
          _balancePrice,
          ParamType.int,
        ),
        'finished_time': serializeParam(
          _finishedTime,
          ParamType.int,
        ),
        'extend_code': serializeParam(
          _extendCode,
          ParamType.String,
        ),
        'extra': serializeParam(
          _extra,
          ParamType.String,
        ),
        'system_remark': serializeParam(
          _systemRemark,
          ParamType.String,
        ),
        'remark_id': serializeParam(
          _remarkId,
          ParamType.int,
        ),
        'is_timeout': serializeParam(
          _isTimeout,
          ParamType.int,
        ),
        'ignore_delivery': serializeParam(
          _ignoreDelivery,
          ParamType.int,
        ),
        'delivery_type': serializeParam(
          _deliveryType,
          ParamType.int,
        ),
        'meal_status': serializeParam(
          _mealStatus,
          ParamType.int,
        ),
        'meal_time': serializeParam(
          _mealTime,
          ParamType.int,
        ),
        'extend': serializeParam(
          _extend,
          ParamType.String,
        ),
        'is_group': serializeParam(
          _isGroup,
          ParamType.int,
        ),
        'pid': serializeParam(
          _pid,
          ParamType.int,
        ),
        'delay_sec': serializeParam(
          _delaySec,
          ParamType.int,
        ),
        'goods_number': serializeParam(
          _goodsNumber,
          ParamType.int,
        ),
        'goods_item_type': serializeParam(
          _goodsItemType,
          ParamType.int,
        ),
        'goods': serializeParam(
          _goods,
          ParamType.DataStruct,
          isList: true,
        ),
        'fee': serializeParam(
          _fee,
          ParamType.DataStruct,
        ),
        'cancel_type': serializeParam(
          _cancelType,
          ParamType.int,
        ),
        'full_source_sn': serializeParam(
          _fullSourceSn,
          ParamType.String,
        ),
        'gird_id': serializeParam(
          _girdId,
          ParamType.int,
        ),
        'delivery': serializeParam(
          _delivery,
          ParamType.DataStruct,
        ),
        'deliveries': serializeParam(
          _deliveries,
          ParamType.DataStruct,
          isList: true,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'tips': serializeParam(
          _tips,
          ParamType.String,
        ),
        'gcj02_longitude': serializeParam(
          _gcj02Longitude,
          ParamType.String,
        ),
        'gcj02_latitude': serializeParam(
          _gcj02Latitude,
          ParamType.String,
        ),
        'channel_tag_name': serializeParam(
          _channelTagName,
          ParamType.String,
        ),
        'channel': serializeParam(
          _channel,
          ParamType.DataStruct,
        ),
        'meal_btn_show': serializeParam(
          _mealBtnShow,
          ParamType.bool,
        ),
        'meal_type': serializeParam(
          _mealType,
          ParamType.int,
        ),
        'meal_countdown_time': serializeParam(
          _mealCountdownTime,
          ParamType.int,
        ),
        'express_print_count': serializeParam(
          _expressPrintCount,
          ParamType.int,
        ),
        'order_tags': serializeParam(
          _orderTags,
          ParamType.String,
          isList: true,
        ),
        'order_tag_tip_show': serializeParam(
          _orderTagTipShow,
          ParamType.int,
        ),
        'production': serializeParam(
          _production,
          ParamType.String,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.DataStruct,
        ),
        'chain': serializeParam(
          _chain,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static OrderHistoryDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderHistoryDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        sourceId: deserializeParam(
          data['source_id'],
          ParamType.String,
          false,
        ),
        merchantId: deserializeParam(
          data['merchant_id'],
          ParamType.int,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        shopId: deserializeParam(
          data['shop_id'],
          ParamType.int,
          false,
        ),
        channelId: deserializeParam(
          data['channel_id'],
          ParamType.int,
          false,
        ),
        channelTag: deserializeParam(
          data['channel_tag'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.String,
          false,
        ),
        sourceTag: deserializeParam(
          data['source_tag'],
          ParamType.String,
          false,
        ),
        sn: deserializeParam(
          data['sn'],
          ParamType.int,
          false,
        ),
        sourceSn: deserializeParam(
          data['source_sn'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        isSubscribe: deserializeParam(
          data['is_subscribe'],
          ParamType.int,
          false,
        ),
        isHand: deserializeParam(
          data['is_hand'],
          ParamType.int,
          false,
        ),
        realName: deserializeParam(
          data['real_name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        phoneExtend: deserializeParam(
          data['phone_extend'],
          ParamType.String,
          false,
        ),
        secretPhone: deserializeParam(
          data['secret_phone'],
          ParamType.String,
          false,
        ),
        mapAddress: deserializeParam(
          data['map_address'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        orderDate: deserializeParam(
          data['order_date'],
          ParamType.String,
          false,
        ),
        orderTime: deserializeParam(
          data['order_time'],
          ParamType.int,
          false,
        ),
        sendTime: deserializeParam(
          data['send_time'],
          ParamType.int,
          false,
        ),
        userRemark: deserializeParam(
          data['user_remark'],
          ParamType.String,
          false,
        ),
        deliveryDistance: deserializeParam(
          data['delivery_distance'],
          ParamType.int,
          false,
        ),
        deliveryCtime: deserializeParam(
          data['delivery_ctime'],
          ParamType.int,
          false,
        ),
        deliveryTime: deserializeParam(
          data['delivery_time'],
          ParamType.int,
          false,
        ),
        deliveryEnd: deserializeParam(
          data['delivery_end'],
          ParamType.int,
          false,
        ),
        isPrint: deserializeParam(
          data['is_print'],
          ParamType.int,
          false,
        ),
        printNum: deserializeParam(
          data['print_num'],
          ParamType.int,
          false,
        ),
        isPicker: deserializeParam(
          data['is_picker'],
          ParamType.int,
          false,
        ),
        isRemind: deserializeParam(
          data['is_remind'],
          ParamType.int,
          false,
        ),
        isCancel: deserializeParam(
          data['is_cancel'],
          ParamType.int,
          false,
        ),
        cancelStatus: deserializeParam(
          data['cancel_status'],
          ParamType.int,
          false,
        ),
        cancelTime: deserializeParam(
          data['cancel_time'],
          ParamType.int,
          false,
        ),
        utime: deserializeParam(
          data['utime'],
          ParamType.int,
          false,
        ),
        ctime: deserializeParam(
          data['ctime'],
          ParamType.int,
          false,
        ),
        totalPrice: deserializeParam(
          data['total_price'],
          ParamType.int,
          false,
        ),
        balancePrice: deserializeParam(
          data['balance_price'],
          ParamType.int,
          false,
        ),
        finishedTime: deserializeParam(
          data['finished_time'],
          ParamType.int,
          false,
        ),
        extendCode: deserializeParam(
          data['extend_code'],
          ParamType.String,
          false,
        ),
        extra: deserializeParam(
          data['extra'],
          ParamType.String,
          false,
        ),
        systemRemark: deserializeParam(
          data['system_remark'],
          ParamType.String,
          false,
        ),
        remarkId: deserializeParam(
          data['remark_id'],
          ParamType.int,
          false,
        ),
        isTimeout: deserializeParam(
          data['is_timeout'],
          ParamType.int,
          false,
        ),
        ignoreDelivery: deserializeParam(
          data['ignore_delivery'],
          ParamType.int,
          false,
        ),
        deliveryType: deserializeParam(
          data['delivery_type'],
          ParamType.int,
          false,
        ),
        mealStatus: deserializeParam(
          data['meal_status'],
          ParamType.int,
          false,
        ),
        mealTime: deserializeParam(
          data['meal_time'],
          ParamType.int,
          false,
        ),
        extend: deserializeParam(
          data['extend'],
          ParamType.String,
          false,
        ),
        isGroup: deserializeParam(
          data['is_group'],
          ParamType.int,
          false,
        ),
        pid: deserializeParam(
          data['pid'],
          ParamType.int,
          false,
        ),
        delaySec: deserializeParam(
          data['delay_sec'],
          ParamType.int,
          false,
        ),
        goodsNumber: deserializeParam(
          data['goods_number'],
          ParamType.int,
          false,
        ),
        goodsItemType: deserializeParam(
          data['goods_item_type'],
          ParamType.int,
          false,
        ),
        goods: deserializeStructParam<HistoryOrderGoodsStruct>(
          data['goods'],
          ParamType.DataStruct,
          true,
          structBuilder: HistoryOrderGoodsStruct.fromSerializableMap,
        ),
        fee: deserializeStructParam(
          data['fee'],
          ParamType.DataStruct,
          false,
          structBuilder: HistoryOrderFeeStruct.fromSerializableMap,
        ),
        cancelType: deserializeParam(
          data['cancel_type'],
          ParamType.int,
          false,
        ),
        fullSourceSn: deserializeParam(
          data['full_source_sn'],
          ParamType.String,
          false,
        ),
        girdId: deserializeParam(
          data['gird_id'],
          ParamType.int,
          false,
        ),
        delivery: deserializeStructParam(
          data['delivery'],
          ParamType.DataStruct,
          false,
          structBuilder: HistoryOrderDeliveryStruct.fromSerializableMap,
        ),
        deliveries: deserializeStructParam<HistoryOrderDeliveriesStruct>(
          data['deliveries'],
          ParamType.DataStruct,
          true,
          structBuilder: HistoryOrderDeliveriesStruct.fromSerializableMap,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        tips: deserializeParam(
          data['tips'],
          ParamType.String,
          false,
        ),
        gcj02Longitude: deserializeParam(
          data['gcj02_longitude'],
          ParamType.String,
          false,
        ),
        gcj02Latitude: deserializeParam(
          data['gcj02_latitude'],
          ParamType.String,
          false,
        ),
        channelTagName: deserializeParam(
          data['channel_tag_name'],
          ParamType.String,
          false,
        ),
        channel: deserializeStructParam(
          data['channel'],
          ParamType.DataStruct,
          false,
          structBuilder: HistoryOrderChannelStruct.fromSerializableMap,
        ),
        mealBtnShow: deserializeParam(
          data['meal_btn_show'],
          ParamType.bool,
          false,
        ),
        mealType: deserializeParam(
          data['meal_type'],
          ParamType.int,
          false,
        ),
        mealCountdownTime: deserializeParam(
          data['meal_countdown_time'],
          ParamType.int,
          false,
        ),
        expressPrintCount: deserializeParam(
          data['express_print_count'],
          ParamType.int,
          false,
        ),
        orderTags: deserializeParam<String>(
          data['order_tags'],
          ParamType.String,
          true,
        ),
        orderTagTipShow: deserializeParam(
          data['order_tag_tip_show'],
          ParamType.int,
          false,
        ),
        production: deserializeParam(
          data['production'],
          ParamType.String,
          false,
        ),
        shop: deserializeStructParam(
          data['shop'],
          ParamType.DataStruct,
          false,
          structBuilder: HistoryOrderShopStruct.fromSerializableMap,
        ),
        chain: deserializeParam<String>(
          data['chain'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'OrderHistoryDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderHistoryDataStruct &&
        id == other.id &&
        sourceId == other.sourceId &&
        merchantId == other.merchantId &&
        city == other.city &&
        shopId == other.shopId &&
        channelId == other.channelId &&
        channelTag == other.channelTag &&
        categoryId == other.categoryId &&
        sourceTag == other.sourceTag &&
        sn == other.sn &&
        sourceSn == other.sourceSn &&
        status == other.status &&
        isSubscribe == other.isSubscribe &&
        isHand == other.isHand &&
        realName == other.realName &&
        phone == other.phone &&
        phoneExtend == other.phoneExtend &&
        secretPhone == other.secretPhone &&
        mapAddress == other.mapAddress &&
        address == other.address &&
        orderDate == other.orderDate &&
        orderTime == other.orderTime &&
        sendTime == other.sendTime &&
        userRemark == other.userRemark &&
        deliveryDistance == other.deliveryDistance &&
        deliveryCtime == other.deliveryCtime &&
        deliveryTime == other.deliveryTime &&
        deliveryEnd == other.deliveryEnd &&
        isPrint == other.isPrint &&
        printNum == other.printNum &&
        isPicker == other.isPicker &&
        isRemind == other.isRemind &&
        isCancel == other.isCancel &&
        cancelStatus == other.cancelStatus &&
        cancelTime == other.cancelTime &&
        utime == other.utime &&
        ctime == other.ctime &&
        totalPrice == other.totalPrice &&
        balancePrice == other.balancePrice &&
        finishedTime == other.finishedTime &&
        extendCode == other.extendCode &&
        extra == other.extra &&
        systemRemark == other.systemRemark &&
        remarkId == other.remarkId &&
        isTimeout == other.isTimeout &&
        ignoreDelivery == other.ignoreDelivery &&
        deliveryType == other.deliveryType &&
        mealStatus == other.mealStatus &&
        mealTime == other.mealTime &&
        extend == other.extend &&
        isGroup == other.isGroup &&
        pid == other.pid &&
        delaySec == other.delaySec &&
        goodsNumber == other.goodsNumber &&
        goodsItemType == other.goodsItemType &&
        listEquality.equals(goods, other.goods) &&
        fee == other.fee &&
        cancelType == other.cancelType &&
        fullSourceSn == other.fullSourceSn &&
        girdId == other.girdId &&
        delivery == other.delivery &&
        listEquality.equals(deliveries, other.deliveries) &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        tips == other.tips &&
        gcj02Longitude == other.gcj02Longitude &&
        gcj02Latitude == other.gcj02Latitude &&
        channelTagName == other.channelTagName &&
        channel == other.channel &&
        mealBtnShow == other.mealBtnShow &&
        mealType == other.mealType &&
        mealCountdownTime == other.mealCountdownTime &&
        expressPrintCount == other.expressPrintCount &&
        listEquality.equals(orderTags, other.orderTags) &&
        orderTagTipShow == other.orderTagTipShow &&
        production == other.production &&
        shop == other.shop &&
        listEquality.equals(chain, other.chain);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        sourceId,
        merchantId,
        city,
        shopId,
        channelId,
        channelTag,
        categoryId,
        sourceTag,
        sn,
        sourceSn,
        status,
        isSubscribe,
        isHand,
        realName,
        phone,
        phoneExtend,
        secretPhone,
        mapAddress,
        address,
        orderDate,
        orderTime,
        sendTime,
        userRemark,
        deliveryDistance,
        deliveryCtime,
        deliveryTime,
        deliveryEnd,
        isPrint,
        printNum,
        isPicker,
        isRemind,
        isCancel,
        cancelStatus,
        cancelTime,
        utime,
        ctime,
        totalPrice,
        balancePrice,
        finishedTime,
        extendCode,
        extra,
        systemRemark,
        remarkId,
        isTimeout,
        ignoreDelivery,
        deliveryType,
        mealStatus,
        mealTime,
        extend,
        isGroup,
        pid,
        delaySec,
        goodsNumber,
        goodsItemType,
        goods,
        fee,
        cancelType,
        fullSourceSn,
        girdId,
        delivery,
        deliveries,
        longitude,
        latitude,
        tips,
        gcj02Longitude,
        gcj02Latitude,
        channelTagName,
        channel,
        mealBtnShow,
        mealType,
        mealCountdownTime,
        expressPrintCount,
        orderTags,
        orderTagTipShow,
        production,
        shop,
        chain
      ]);
}

OrderHistoryDataStruct createOrderHistoryDataStruct({
  String? id,
  String? sourceId,
  int? merchantId,
  String? city,
  int? shopId,
  int? channelId,
  String? channelTag,
  String? categoryId,
  String? sourceTag,
  int? sn,
  int? sourceSn,
  String? status,
  int? isSubscribe,
  int? isHand,
  String? realName,
  String? phone,
  String? phoneExtend,
  String? secretPhone,
  String? mapAddress,
  String? address,
  String? orderDate,
  int? orderTime,
  int? sendTime,
  String? userRemark,
  int? deliveryDistance,
  int? deliveryCtime,
  int? deliveryTime,
  int? deliveryEnd,
  int? isPrint,
  int? printNum,
  int? isPicker,
  int? isRemind,
  int? isCancel,
  int? cancelStatus,
  int? cancelTime,
  int? utime,
  int? ctime,
  int? totalPrice,
  int? balancePrice,
  int? finishedTime,
  String? extendCode,
  String? extra,
  String? systemRemark,
  int? remarkId,
  int? isTimeout,
  int? ignoreDelivery,
  int? deliveryType,
  int? mealStatus,
  int? mealTime,
  String? extend,
  int? isGroup,
  int? pid,
  int? delaySec,
  int? goodsNumber,
  int? goodsItemType,
  HistoryOrderFeeStruct? fee,
  int? cancelType,
  String? fullSourceSn,
  int? girdId,
  HistoryOrderDeliveryStruct? delivery,
  double? longitude,
  double? latitude,
  String? tips,
  String? gcj02Longitude,
  String? gcj02Latitude,
  String? channelTagName,
  HistoryOrderChannelStruct? channel,
  bool? mealBtnShow,
  int? mealType,
  int? mealCountdownTime,
  int? expressPrintCount,
  int? orderTagTipShow,
  String? production,
  HistoryOrderShopStruct? shop,
}) =>
    OrderHistoryDataStruct(
      id: id,
      sourceId: sourceId,
      merchantId: merchantId,
      city: city,
      shopId: shopId,
      channelId: channelId,
      channelTag: channelTag,
      categoryId: categoryId,
      sourceTag: sourceTag,
      sn: sn,
      sourceSn: sourceSn,
      status: status,
      isSubscribe: isSubscribe,
      isHand: isHand,
      realName: realName,
      phone: phone,
      phoneExtend: phoneExtend,
      secretPhone: secretPhone,
      mapAddress: mapAddress,
      address: address,
      orderDate: orderDate,
      orderTime: orderTime,
      sendTime: sendTime,
      userRemark: userRemark,
      deliveryDistance: deliveryDistance,
      deliveryCtime: deliveryCtime,
      deliveryTime: deliveryTime,
      deliveryEnd: deliveryEnd,
      isPrint: isPrint,
      printNum: printNum,
      isPicker: isPicker,
      isRemind: isRemind,
      isCancel: isCancel,
      cancelStatus: cancelStatus,
      cancelTime: cancelTime,
      utime: utime,
      ctime: ctime,
      totalPrice: totalPrice,
      balancePrice: balancePrice,
      finishedTime: finishedTime,
      extendCode: extendCode,
      extra: extra,
      systemRemark: systemRemark,
      remarkId: remarkId,
      isTimeout: isTimeout,
      ignoreDelivery: ignoreDelivery,
      deliveryType: deliveryType,
      mealStatus: mealStatus,
      mealTime: mealTime,
      extend: extend,
      isGroup: isGroup,
      pid: pid,
      delaySec: delaySec,
      goodsNumber: goodsNumber,
      goodsItemType: goodsItemType,
      fee: fee ?? HistoryOrderFeeStruct(),
      cancelType: cancelType,
      fullSourceSn: fullSourceSn,
      girdId: girdId,
      delivery: delivery ?? HistoryOrderDeliveryStruct(),
      longitude: longitude,
      latitude: latitude,
      tips: tips,
      gcj02Longitude: gcj02Longitude,
      gcj02Latitude: gcj02Latitude,
      channelTagName: channelTagName,
      channel: channel ?? HistoryOrderChannelStruct(),
      mealBtnShow: mealBtnShow,
      mealType: mealType,
      mealCountdownTime: mealCountdownTime,
      expressPrintCount: expressPrintCount,
      orderTagTipShow: orderTagTipShow,
      production: production,
      shop: shop ?? HistoryOrderShopStruct(),
    );

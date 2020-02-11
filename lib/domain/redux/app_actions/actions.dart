import 'package:flipper/model/app_action.dart';
import 'package:flipper/model/branch.dart';
import 'package:flipper/model/business.dart';
import 'package:flipper/model/cart.dart';
import 'package:flipper/model/category.dart';
import 'package:flipper/model/disable.dart';
import 'package:flipper/model/flipper_color.dart';
import 'package:flipper/model/item.dart';
import 'package:flipper/model/key_pad.dart';
import 'package:flipper/model/unit.dart';
import 'package:flipper/model/variation.dart';
import 'package:flutter/material.dart';

@immutable
class AppAction {
  final AppActions actions;

  const AppAction({@required this.actions});
}

@immutable
class PersistFocusedUnitAction {}

@immutable
class BusinessId {
  final int businessId;

  BusinessId(this.businessId);
}

@immutable
class UnitR {
  final List<Unit> units;
  UnitR(this.units);
}

@immutable
class CategoryNameAction {
  final String name;

  CategoryNameAction({this.name});
}

@immutable
class CreateEmptyTempCategoryAction {}

@immutable
class TempCategoryIdAction {
  final int categoryId;

  TempCategoryIdAction({this.categoryId});
}

@immutable
class CategoryAction {
  final List<Category> categories;
  CategoryAction(this.categories);
}

@immutable
class WithUnitId {
  final int unitId;

  WithUnitId({@required this.unitId});
}

@immutable
class InvokePersistFocusedCategory {
  final Category category;

  InvokePersistFocusedCategory({this.category});
}

@immutable
class UpdateUnitAction {
  final int unitId;

  UpdateUnitAction({@required this.unitId});
}

@immutable
class OnSetTab {}

@immutable
class CreateUnit {}

@immutable
class CreateCategoryFromAddItemScreenAction {
  final String categoryName;

  CreateCategoryFromAddItemScreenAction({this.categoryName});
}

@immutable
class CurrentTab {
  final int tab;

  const CurrentTab({@required this.tab});
}

@immutable
class CurrentUnit {
  final Unit unit;

  const CurrentUnit({@required this.unit});
}

@immutable
class CurrentColor {
  final FlipperColor color;

  const CurrentColor({@required this.color});
}

@immutable
class CurrentDisable {
  final Disable disable;

  const CurrentDisable({@required this.disable});
}

@immutable
class ResetAppAction {}

@immutable
class VariationAction {
  final List<Variation> variations;

  VariationAction({this.variations});
}

@immutable
class SaveItemAction {
  final Business business;
  final Branch branch;
  final String price;
  final List<Variation> variations;
  final Category category;
  final String description;
  final String name;
  final Unit unit;
  final String color;

  SaveItemAction({
    this.business,
    this.branch,
    this.price,
    this.variations,
    this.category,
    this.description,
    this.name,
    this.unit,
    this.color,
  });
}

@immutable
class ItemLoaded {
  final List<Item> items;

  ItemLoaded({this.items});
}

@immutable
class AddItemToCartAction {
  final Item cartItem;

  AddItemToCartAction({this.cartItem});
}

@immutable
class IncrementAction {
  final int increment;

  IncrementAction({this.increment});
}

@immutable
class SwitchCategory {
  final category;

  SwitchCategory({this.category});
}

@immutable
class NeedItemVariation {
  final Item item;

  NeedItemVariation({this.item});
}

@immutable
class SwitchVariation {
  final Item item;

  SwitchVariation({this.item});
}

@immutable
class ItemsVariation {
  final List<Item> items;

  ItemsVariation({this.items});
}

@immutable
class CurrentActiveSaleItem {
  final Item item;

  CurrentActiveSaleItem({this.item});
}

@immutable
class SaveCart {}

@immutable
class Carts {
  final List<Cart> carts;
  final int quantity;
  Carts({this.carts, this.quantity});
}

@immutable
class CartQuantity {
  final int quantity;

  CartQuantity({this.quantity});
}

@immutable
class SavePayment {
  final String note;
  final int cashReceived;

  SavePayment({this.note, this.cashReceived});
}

@immutable
class KayPadAction {
  final KeyPad keyPad;

  KayPadAction({this.keyPad});
}

class CleanKeyPad {}

class CleanVariation {}

class CleanAppActions {}

class CleanCurrentColor {}

class CleanCartItem {}

@immutable
class CustomUnit {
  final Unit unit;

  CustomUnit({this.unit});
}

@immutable
class CustomCategory {
  final Category category;

  CustomCategory({this.category});
}

@immutable
class CustomItem {
  final Item item;

  CustomItem({this.item});
}

class SaveCartCustom{}
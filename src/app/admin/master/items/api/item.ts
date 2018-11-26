export class Item {
  id?:number;
  item:string;
  item_id?:number;
  sku:string;
  price:number;
  category_id?:number;
  category?:{name:string};
  barcode?:string;
  sale_price?:number;
  currency?:string;

    constructor(params: Object = {}) {
      for (let name in params) {
          this[name] = params[name];
      }
    }
}

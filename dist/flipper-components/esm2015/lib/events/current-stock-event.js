import { BusEvent } from '@enexus/flipper-event';
export class CurrentStockEvent extends BusEvent {
    constructor(currentStock, action = 'add') {
        super(CurrentStockEvent.CHANNEL);
        this.currentStock = currentStock;
        this.action = action;
    }
}
CurrentStockEvent.CHANNEL = 'currentStock';
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY3VycmVudC1zdG9jay1ldmVudC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uL3Byb2plY3RzL2ZsaXBwZXItY29tcG9uZW50cy9zcmMvbGliL2V2ZW50cy9jdXJyZW50LXN0b2NrLWV2ZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBLE9BQU8sRUFBRSxRQUFRLEVBQUUsTUFBTSx1QkFBdUIsQ0FBQTtBQUdoRCxNQUFNLE9BQU8saUJBQWtCLFNBQVEsUUFBUTtJQUc3QyxZQUFtQixZQUFtQixFQUFTLFNBQWlCLEtBQUs7UUFDbkUsS0FBSyxDQUFDLGlCQUFpQixDQUFDLE9BQU8sQ0FBQyxDQUFBO1FBRGYsaUJBQVksR0FBWixZQUFZLENBQU87UUFBUyxXQUFNLEdBQU4sTUFBTSxDQUFnQjtJQUVyRSxDQUFDOztBQUpzQix5QkFBTyxHQUFHLGNBQWMsQ0FBQSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IEJ1c0V2ZW50IH0gZnJvbSAnQGVuZXh1cy9mbGlwcGVyLWV2ZW50J1xyXG5pbXBvcnQgeyBTdG9jayB9IGZyb20gJy4uL2VudHJpZXMvc3RvY2tzJ1xyXG5cclxuZXhwb3J0IGNsYXNzIEN1cnJlbnRTdG9ja0V2ZW50IGV4dGVuZHMgQnVzRXZlbnQge1xyXG4gIHB1YmxpYyBzdGF0aWMgcmVhZG9ubHkgQ0hBTk5FTCA9ICdjdXJyZW50U3RvY2snXHJcblxyXG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBjdXJyZW50U3RvY2s6IFN0b2NrLCBwdWJsaWMgYWN0aW9uOiBzdHJpbmcgPSAnYWRkJykge1xyXG4gICAgc3VwZXIoQ3VycmVudFN0b2NrRXZlbnQuQ0hBTk5FTClcclxuICB9XHJcbn1cclxuIl19
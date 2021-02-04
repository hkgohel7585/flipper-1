import { BusEvent } from '@enexus/flipper-event';
export class DraftStocksEvent extends BusEvent {
    constructor(draftStocks, action = 'add') {
        super(DraftStocksEvent.CHANNEL);
        this.draftStocks = draftStocks;
        this.action = action;
    }
}
DraftStocksEvent.CHANNEL = 'draftStocks';
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJhZnQtc3RvY2tzLWV2ZW50LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vcHJvamVjdHMvZmxpcHBlci1jb21wb25lbnRzL3NyYy9saWIvZXZlbnRzL2RyYWZ0LXN0b2Nrcy1ldmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQSxPQUFPLEVBQUUsUUFBUSxFQUFFLE1BQU0sdUJBQXVCLENBQUE7QUFHaEQsTUFBTSxPQUFPLGdCQUFpQixTQUFRLFFBQVE7SUFHNUMsWUFBbUIsV0FBb0IsRUFBUyxTQUFpQixLQUFLO1FBQ3BFLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsQ0FBQTtRQURkLGdCQUFXLEdBQVgsV0FBVyxDQUFTO1FBQVMsV0FBTSxHQUFOLE1BQU0sQ0FBZ0I7SUFFdEUsQ0FBQzs7QUFKc0Isd0JBQU8sR0FBRyxhQUFhLENBQUEiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBCdXNFdmVudCB9IGZyb20gJ0BlbmV4dXMvZmxpcHBlci1ldmVudCdcclxuaW1wb3J0IHsgU3RvY2sgfSBmcm9tICcuLi9lbnRyaWVzL3N0b2NrcydcclxuXHJcbmV4cG9ydCBjbGFzcyBEcmFmdFN0b2Nrc0V2ZW50IGV4dGVuZHMgQnVzRXZlbnQge1xyXG4gIHB1YmxpYyBzdGF0aWMgcmVhZG9ubHkgQ0hBTk5FTCA9ICdkcmFmdFN0b2NrcydcclxuXHJcbiAgY29uc3RydWN0b3IocHVibGljIGRyYWZ0U3RvY2tzOiBTdG9ja1tdLCBwdWJsaWMgYWN0aW9uOiBzdHJpbmcgPSAnYWRkJykge1xyXG4gICAgc3VwZXIoRHJhZnRTdG9ja3NFdmVudC5DSEFOTkVMKVxyXG4gIH1cclxufVxyXG4iXX0=
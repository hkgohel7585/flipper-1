import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { Notification, NotificationType } from './notification';
import * as i0 from "@angular/core";
export class NotificationService {
    constructor() {
        this.subject = new Subject();
        this.idx = 0;
    }
    getObservable() {
        return this.subject.asObservable();
    }
    info(title, message, timeout = 3000) {
        this.subject.next(new Notification(this.idx++, NotificationType.info, title, message, timeout));
    }
    success(title, message, timeout = 3000) {
        this.subject.next(new Notification(this.idx++, NotificationType.success, title, message, timeout));
    }
    warning(title, message, timeout = 3000) {
        this.subject.next(new Notification(this.idx++, NotificationType.warning, title, message, timeout));
    }
    error(title, message, timeout = 0) {
        this.subject.next(new Notification(this.idx++, NotificationType.error, title, message, timeout));
    }
}
NotificationService.ɵprov = i0.ɵɵdefineInjectable({ factory: function NotificationService_Factory() { return new NotificationService(); }, token: NotificationService, providedIn: "root" });
NotificationService.decorators = [
    { type: Injectable, args: [{
                providedIn: 'root',
            },] }
];
NotificationService.ctorParameters = () => [];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm90aWZpY2F0aW9uLnNlcnZpY2UuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9wcm9qZWN0cy9mbGlwcGVyLWNvbXBvbmVudHMvc3JjL2xpYi9ub3RpZmljYXRpb25zL25vdGlmaWNhdGlvbi5zZXJ2aWNlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBLE9BQU8sRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUE7QUFDMUMsT0FBTyxFQUFFLE9BQU8sRUFBYyxNQUFNLE1BQU0sQ0FBQTtBQUMxQyxPQUFPLEVBQUUsWUFBWSxFQUFFLGdCQUFnQixFQUFFLE1BQU0sZ0JBQWdCLENBQUE7O0FBSy9ELE1BQU0sT0FBTyxtQkFBbUI7SUFJOUI7UUFIUSxZQUFPLEdBQUcsSUFBSSxPQUFPLEVBQWdCLENBQUE7UUFDckMsUUFBRyxHQUFHLENBQUMsQ0FBQTtJQUVBLENBQUM7SUFFaEIsYUFBYTtRQUNYLE9BQU8sSUFBSSxDQUFDLE9BQU8sQ0FBQyxZQUFZLEVBQUUsQ0FBQTtJQUNwQyxDQUFDO0lBRUQsSUFBSSxDQUFDLEtBQWEsRUFBRSxPQUFlLEVBQUUsT0FBTyxHQUFHLElBQUk7UUFDakQsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxZQUFZLENBQUMsSUFBSSxDQUFDLEdBQUcsRUFBRSxFQUFFLGdCQUFnQixDQUFDLElBQUksRUFBRSxLQUFLLEVBQUUsT0FBTyxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUE7SUFDakcsQ0FBQztJQUVELE9BQU8sQ0FBQyxLQUFhLEVBQUUsT0FBZSxFQUFFLE9BQU8sR0FBRyxJQUFJO1FBQ3BELElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksQ0FBQyxHQUFHLEVBQUUsRUFBRSxnQkFBZ0IsQ0FBQyxPQUFPLEVBQUUsS0FBSyxFQUFFLE9BQU8sRUFBRSxPQUFPLENBQUMsQ0FBQyxDQUFBO0lBQ3BHLENBQUM7SUFFRCxPQUFPLENBQUMsS0FBYSxFQUFFLE9BQWUsRUFBRSxPQUFPLEdBQUcsSUFBSTtRQUNwRCxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLFlBQVksQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLEVBQUUsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLEtBQUssRUFBRSxPQUFPLEVBQUUsT0FBTyxDQUFDLENBQUMsQ0FBQTtJQUNwRyxDQUFDO0lBRUQsS0FBSyxDQUFDLEtBQWEsRUFBRSxPQUFlLEVBQUUsT0FBTyxHQUFHLENBQUM7UUFDL0MsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxZQUFZLENBQUMsSUFBSSxDQUFDLEdBQUcsRUFBRSxFQUFFLGdCQUFnQixDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsT0FBTyxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUE7SUFDbEcsQ0FBQzs7OztZQTNCRixVQUFVLFNBQUM7Z0JBQ1YsVUFBVSxFQUFFLE1BQU07YUFDbkIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBJbmplY3RhYmxlIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSdcclxuaW1wb3J0IHsgU3ViamVjdCwgT2JzZXJ2YWJsZSB9IGZyb20gJ3J4anMnXHJcbmltcG9ydCB7IE5vdGlmaWNhdGlvbiwgTm90aWZpY2F0aW9uVHlwZSB9IGZyb20gJy4vbm90aWZpY2F0aW9uJ1xyXG5cclxuQEluamVjdGFibGUoe1xyXG4gIHByb3ZpZGVkSW46ICdyb290JyxcclxufSlcclxuZXhwb3J0IGNsYXNzIE5vdGlmaWNhdGlvblNlcnZpY2Uge1xyXG4gIHByaXZhdGUgc3ViamVjdCA9IG5ldyBTdWJqZWN0PE5vdGlmaWNhdGlvbj4oKVxyXG4gIHByaXZhdGUgaWR4ID0gMFxyXG5cclxuICBjb25zdHJ1Y3RvcigpIHt9XHJcblxyXG4gIGdldE9ic2VydmFibGUoKTogT2JzZXJ2YWJsZTxOb3RpZmljYXRpb24+IHtcclxuICAgIHJldHVybiB0aGlzLnN1YmplY3QuYXNPYnNlcnZhYmxlKClcclxuICB9XHJcblxyXG4gIGluZm8odGl0bGU6IHN0cmluZywgbWVzc2FnZTogc3RyaW5nLCB0aW1lb3V0ID0gMzAwMCkge1xyXG4gICAgdGhpcy5zdWJqZWN0Lm5leHQobmV3IE5vdGlmaWNhdGlvbih0aGlzLmlkeCsrLCBOb3RpZmljYXRpb25UeXBlLmluZm8sIHRpdGxlLCBtZXNzYWdlLCB0aW1lb3V0KSlcclxuICB9XHJcblxyXG4gIHN1Y2Nlc3ModGl0bGU6IHN0cmluZywgbWVzc2FnZTogc3RyaW5nLCB0aW1lb3V0ID0gMzAwMCkge1xyXG4gICAgdGhpcy5zdWJqZWN0Lm5leHQobmV3IE5vdGlmaWNhdGlvbih0aGlzLmlkeCsrLCBOb3RpZmljYXRpb25UeXBlLnN1Y2Nlc3MsIHRpdGxlLCBtZXNzYWdlLCB0aW1lb3V0KSlcclxuICB9XHJcblxyXG4gIHdhcm5pbmcodGl0bGU6IHN0cmluZywgbWVzc2FnZTogc3RyaW5nLCB0aW1lb3V0ID0gMzAwMCkge1xyXG4gICAgdGhpcy5zdWJqZWN0Lm5leHQobmV3IE5vdGlmaWNhdGlvbih0aGlzLmlkeCsrLCBOb3RpZmljYXRpb25UeXBlLndhcm5pbmcsIHRpdGxlLCBtZXNzYWdlLCB0aW1lb3V0KSlcclxuICB9XHJcblxyXG4gIGVycm9yKHRpdGxlOiBzdHJpbmcsIG1lc3NhZ2U6IHN0cmluZywgdGltZW91dCA9IDApIHtcclxuICAgIHRoaXMuc3ViamVjdC5uZXh0KG5ldyBOb3RpZmljYXRpb24odGhpcy5pZHgrKywgTm90aWZpY2F0aW9uVHlwZS5lcnJvciwgdGl0bGUsIG1lc3NhZ2UsIHRpbWVvdXQpKVxyXG4gIH1cclxufVxyXG4iXX0=
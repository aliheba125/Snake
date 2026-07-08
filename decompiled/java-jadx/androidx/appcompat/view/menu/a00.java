package androidx.appcompat.view.menu;

import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class a00 extends j8 {
    public a00() {
        super((IBinder) bt0.c.b("appwidget"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return b00.b.b(bt0.c.b("appwidget"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("appwidget");
    }

    @Override // androidx.appcompat.view.menu.ob, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        od0.e(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        d(new y41("startListening", new int[0]));
        d(new y41("stopListening", 0));
        d(new y41("allocateAppWidgetId", 0));
        d(new y41("deleteAppWidgetId", 0));
        d(new y41("deleteHost", 0));
        d(new y41("deleteAllHosts", 0));
        d(new y41("getAppWidgetViews", null));
        d(new y41("getAppWidgetIdsForHost", null));
        d(new y41("createAppWidgetConfigIntentSender", null));
        d(new y41("updateAppWidgetIds", 0));
        d(new y41("updateAppWidgetOptions", 0));
        d(new y41("getAppWidgetOptions", null));
        d(new y41("partiallyUpdateAppWidgetIds", 0));
        d(new y41("updateAppWidgetProvider", 0));
        d(new y41("notifyAppWidgetViewDataChanged", 0));
        d(new y41("getInstalledProvidersForProfile", null));
        d(new y41("getAppWidgetInfo", null));
        Boolean bool = Boolean.FALSE;
        d(new y41("hasBindAppWidgetPermission", bool));
        d(new y41("setBindAppWidgetPermission", 0));
        d(new y41("bindAppWidgetId", bool));
        d(new y41("bindRemoteViewsService", 0));
        d(new y41("unbindRemoteViewsService", 0));
        d(new y41("getAppWidgetIds", new int[0]));
        d(new y41("isBoundWidgetPackage", bool));
    }
}

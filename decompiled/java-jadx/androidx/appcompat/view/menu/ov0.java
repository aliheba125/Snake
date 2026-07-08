package androidx.appcompat.view.menu;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ov0 extends kv0 {
    public static final ov0 d = new ov0(k00.class);

    public ov0(Class cls) {
        super(cls);
    }

    public static ov0 l() {
        return d;
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "notification_manager";
    }

    public void f(int i, String str) {
        try {
            ((k00) c()).Y0(i, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void g(NotificationChannel notificationChannel) {
        try {
            ((k00) c()).a0(notificationChannel, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void h(NotificationChannelGroup notificationChannelGroup) {
        try {
            ((k00) c()).e0(notificationChannelGroup, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void i(String str) {
        try {
            ((k00) c()).p1(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void j(String str) {
        try {
            ((k00) c()).V(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void k(int i, String str, Notification notification) {
        try {
            ((k00) c()).R(i, str, notification, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public NotificationChannel m(String str) {
        try {
            return ((k00) c()).V0(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List n(String str) {
        try {
            return ((k00) c()).H0(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List o(String str) {
        try {
            return ((k00) c()).p(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }
}

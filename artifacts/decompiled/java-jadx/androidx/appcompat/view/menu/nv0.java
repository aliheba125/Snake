package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class nv0 extends kv0 {
    public static final nv0 d = new nv0(j00.class);

    public nv0(Class cls) {
        super(cls);
    }

    public static nv0 f() {
        return d;
    }

    public static boolean l() {
        return f().k(jv0.N2(), jv0.E2()) != 0;
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "location_manager";
    }

    public List g(int i, String str) {
        try {
            return ((j00) c()).p2(i, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }

    public n6 h(int i, String str) {
        try {
            return ((j00) c()).h2(i, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public p6 i(int i, String str) {
        try {
            return ((j00) c()).B(i, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List j(int i, String str) {
        try {
            return ((j00) c()).J0(i, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int k(int i, String str) {
        try {
            return ((j00) c()).K0(i, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void m(IBinder iBinder) {
        try {
            ((j00) c()).x(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void n(IBinder iBinder) {
        try {
            ((j00) c()).k0(iBinder, jv0.E2(), jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}

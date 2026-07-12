package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class dv0 extends kv0 {
    public static final dv0 d = new dv0(g00.class);

    public dv0(Class cls) {
        super(cls);
    }

    public static dv0 i() {
        return d;
    }

    public Intent A(Intent intent, String str, int i) {
        try {
            return ((g00) c()).m2(intent, str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int B(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) {
        try {
            return ((g00) c()).v1(i, intentArr, strArr, iBinder, bundle);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void C(Intent intent, int i) {
        try {
            ((g00) c()).n0(intent, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void D(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) {
        try {
            ((g00) c()).Z0(i, intent, str, iBinder, str2, i2, i3, bundle);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public ComponentName E(Intent intent, String str, boolean z, int i) {
        try {
            return ((g00) c()).D1(intent, str, z, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int F(Intent intent, String str, int i) {
        try {
            return ((g00) c()).Y1(intent, str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void G(ComponentName componentName, IBinder iBinder, int i) {
        try {
            ((g00) c()).H(componentName, iBinder, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void H(IBinder iBinder, int i) {
        try {
            ((g00) c()).L1(iBinder, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "activity_manager";
    }

    public IBinder f(ProviderInfo providerInfo) {
        try {
            return ((g00) c()).i(providerInfo);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Intent g(Intent intent, IBinder iBinder, String str, int i) {
        try {
            return ((g00) c()).u(intent, iBinder, str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void h(wh0 wh0Var) {
        try {
            ((g00) c()).K(wh0Var);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public ComponentName j(IBinder iBinder, int i) {
        try {
            return ((g00) c()).q2(iBinder, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String k(IBinder iBinder, int i) {
        try {
            return ((g00) c()).X(iBinder, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void l(IBinder iBinder, String str, int i) {
        try {
            ((g00) c()).u1(iBinder, str, i, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public String m(IBinder iBinder) {
        try {
            return ((g00) c()).R1(iBinder, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public aq0 n(String str, int i) {
        try {
            return ((g00) c()).C(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public bq0 o(String str, int i) {
        try {
            return ((g00) c()).S0(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int p(IBinder iBinder) {
        try {
            return ((g00) c()).q(iBinder, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public p3 q(String str, String str2, int i) {
        try {
            return ((g00) c()).N0(str, str2, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void r(int i, IBinder iBinder, String str) {
        try {
            ((g00) c()).m(i, iBinder, str);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void s(IBinder iBinder) {
        try {
            ((g00) c()).r1(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void t(IBinder iBinder) {
        try {
            ((g00) c()).T1(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void u(IBinder iBinder) {
        try {
            ((g00) c()).M(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        } catch (NullPointerException unused) {
        }
    }

    public void v(Intent intent, int i) {
        try {
            ((g00) c()).l(intent, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public i31 w(Intent intent, int i) {
        try {
            return ((g00) c()).y(intent, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public IBinder x(Intent intent, String str, int i) {
        try {
            return ((g00) c()).d0(intent, str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void y(String str, String str2, int i) {
        try {
            ((g00) c()).h0(str, str2, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void z(Intent intent, wh0 wh0Var, int i) {
        ((g00) c()).x1(intent, wh0Var, i);
    }
}

package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.accounts.AuthenticatorDescription;
import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes.dex */
public class av0 extends kv0 {
    public static final av0 d = new av0(f00.class);

    public av0(Class cls) {
        super(cls);
    }

    public static av0 p() {
        return d;
    }

    public AuthenticatorDescription[] A() {
        try {
            return ((f00) c()).k2(jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Map B(Account account) {
        try {
            return ((f00) c()).b2(account, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String C(Account account) {
        try {
            return ((f00) c()).N1(account, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String D(Account account, String str) {
        try {
            return ((f00) c()).r(account, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void E(String str, String str2) {
        try {
            ((f00) c()).X0(str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public String F(Account account, String str) {
        try {
            return ((f00) c()).l2(account, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void G(String[] strArr, String str) {
        try {
            ((f00) c()).w1(strArr, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void H(IAccountManagerResponse iAccountManagerResponse, Account account, boolean z) {
        try {
            ((f00) c()).a1(iAccountManagerResponse, account, z, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean I(Account account) {
        try {
            return ((f00) c()).i1(account, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean J(Account account, String str, int i) {
        try {
            return ((f00) c()).m0(account, str, i, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void K(Account account, String str, String str2) {
        try {
            ((f00) c()).G(account, str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void L(Account account, String str, String str2, int i) {
        try {
            ((f00) c()).G(account, str, str2, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void M(Account account, String str) {
        try {
            ((f00) c()).y1(account, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void N(Account account, String str, String str2) {
        try {
            ((f00) c()).c1(account, str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void O(Account account, String str, String str2, int i) {
        try {
            ((f00) c()).c1(account, str, str2, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void P(String[] strArr, String str) {
        try {
            ((f00) c()).Z(strArr, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void Q(Account account, String str, int i, boolean z) {
        try {
            ((f00) c()).r2(account, str, i, z);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void R(IAccountManagerResponse iAccountManagerResponse, Account account, String str, boolean z, Bundle bundle) {
        try {
            ((f00) c()).f1(iAccountManagerResponse, account, str, z, bundle, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "account_manager";
    }

    public void f(Account account) {
        try {
            ((f00) c()).p0(account, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void g(IAccountManagerResponse iAccountManagerResponse, String str, String str2, String[] strArr, boolean z, Bundle bundle) {
        try {
            ((f00) c()).M0(iAccountManagerResponse, str, str2, strArr, z, bundle, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void h(IAccountManagerResponse iAccountManagerResponse, String str, String str2, String[] strArr, boolean z, Bundle bundle) {
        try {
            ((f00) c()).K1(iAccountManagerResponse, str, str2, strArr, z, bundle, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean i(Account account, String str, Bundle bundle) {
        try {
            return ((f00) c()).R0(account, str, bundle, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean j(Account account, String str, Bundle bundle, int i) {
        try {
            return ((f00) c()).R0(account, str, bundle, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean k(Account account, String str, Bundle bundle, Map map) {
        try {
            return ((f00) c()).s1(account, str, bundle, map, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void l(Account account) {
        try {
            ((f00) c()).J1(account, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void m(IAccountManagerResponse iAccountManagerResponse, Account account, Bundle bundle, boolean z) {
        try {
            ((f00) c()).Y(iAccountManagerResponse, account, bundle, z, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void n(IAccountManagerResponse iAccountManagerResponse, Account account, int i, int i2) {
        try {
            ((f00) c()).d2(iAccountManagerResponse, account, i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void o(IAccountManagerResponse iAccountManagerResponse, String str, boolean z) {
        try {
            ((f00) c()).T0(iAccountManagerResponse, str, z, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void q(IAccountManagerResponse iAccountManagerResponse, String str, String[] strArr) {
        try {
            ((f00) c()).M1(iAccountManagerResponse, str, strArr, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public int r(Account account, String str) {
        try {
            return ((f00) c()).E0(account, str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return 3;
        }
    }

    public Map s(String str, String str2) {
        try {
            return ((f00) c()).f0(str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Account[] t(String str) {
        try {
            return ((f00) c()).I1(str, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Account[] u(String str, int i) {
        try {
            return ((f00) c()).I1(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void v(IAccountManagerResponse iAccountManagerResponse, String str, String[] strArr) {
        try {
            ((f00) c()).A1(iAccountManagerResponse, str, strArr, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public Account[] w(String str, String str2) {
        try {
            return ((f00) c()).d1(str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Account[] x(String str, int i) {
        try {
            return ((f00) c()).S1(str, i, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void y(IAccountManagerResponse iAccountManagerResponse, Account account, String str, boolean z, boolean z2, Bundle bundle) {
        try {
            ((f00) c()).k1(iAccountManagerResponse, account, str, z, z2, bundle, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void z(IAccountManagerResponse iAccountManagerResponse, String str, String str2) {
        try {
            ((f00) c()).y0(iAccountManagerResponse, str, str2, jv0.N2());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}

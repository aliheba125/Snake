package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public class oz extends j8 {

    public static class a extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().f((Account) objArr[0]);
            return 0;
        }
    }

    public static class a0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.valueOf(av0.p().I((Account) objArr[0]));
        }
    }

    public static class b extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().g((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2], (String[]) objArr[3], ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5]);
            return 0;
        }
    }

    public static class b0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.valueOf(av0.p().J((Account) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue()));
        }
    }

    public static class c extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().h((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2], (String[]) objArr[3], ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5]);
            return 0;
        }
    }

    public static class c0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().K((Account) objArr[0], (String) objArr[1], (String) objArr[2]);
            return 0;
        }
    }

    public static class d extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.valueOf(av0.p().i((Account) objArr[0], (String) objArr[1], (Bundle) objArr[2]));
        }
    }

    public static class d0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().M((Account) objArr[0], (String) objArr[1]);
            return 0;
        }
    }

    public static class e extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Boolean.valueOf(av0.p().k((Account) objArr[0], (String) objArr[1], (Bundle) objArr[2], (Map) objArr[3]));
        }
    }

    public static class e0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().N((Account) objArr[0], (String) objArr[1], (String) objArr[2]);
            return 0;
        }
    }

    public static class f extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().l((Account) objArr[0]);
            return 0;
        }
    }

    public static class f0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().P((String[]) objArr[0], (String) objArr[1]);
            return 0;
        }
    }

    public static class g extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().m((IAccountManagerResponse) objArr[0], (Account) objArr[1], (Bundle) objArr[2], ((Boolean) objArr[3]).booleanValue());
            return 0;
        }
    }

    public static class g0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().Q((Account) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue(), ((Boolean) objArr[3]).booleanValue());
            return 0;
        }
    }

    public static class h extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().n((IAccountManagerResponse) objArr[0], (Account) objArr[1], ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
            return 0;
        }
    }

    public static class h0 extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().R((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2], ((Boolean) objArr[3]).booleanValue(), (Bundle) objArr[4]);
            return 0;
        }
    }

    public static class i extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().o((IAccountManagerResponse) objArr[0], (String) objArr[1], ((Boolean) objArr[2]).booleanValue());
            return 0;
        }
    }

    public static class j extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().q((IAccountManagerResponse) objArr[0], (String) objArr[1], (String[]) objArr[2]);
            return 0;
        }
    }

    public static class k extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return Integer.valueOf(av0.p().r((Account) objArr[0], (String) objArr[1]));
        }
    }

    public static class l extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().s((String) objArr[0], (String) objArr[1]);
        }
    }

    public static class m extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().t((String) objArr[0]);
        }
    }

    public static class n extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().v((IAccountManagerResponse) objArr[0], (String) objArr[1], (String[]) objArr[2]);
            return 0;
        }
    }

    public static class o extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().w((String) objArr[0], (String) objArr[1]);
        }
    }

    public static class p extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().x((String) objArr[0], ((Integer) objArr[1]).intValue());
        }
    }

    public static class q extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().y((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2], ((Boolean) objArr[3]).booleanValue(), ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5]);
            return 0;
        }
    }

    public static class r extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().z((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2]);
            return 0;
        }
    }

    public static class s extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().A();
        }
    }

    public static class t extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().B((Account) objArr[0]);
        }
    }

    public static class u extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().C((Account) objArr[0]);
        }
    }

    public static class v extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().D((Account) objArr[0], (String) objArr[1]);
        }
    }

    public static class w extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().E((String) objArr[0], (String) objArr[1]);
            return 0;
        }
    }

    public static class x extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            return av0.p().F((Account) objArr[0], (String) objArr[1]);
        }
    }

    public static class y extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().G((String[]) objArr[0], (String) objArr[1]);
            return 0;
        }
    }

    public static class z extends md0 {
        @Override // androidx.appcompat.view.menu.md0
        public Object d(Object obj, Method method, Object[] objArr) {
            av0.p().H((IAccountManagerResponse) objArr[0], (Account) objArr[1], ((Boolean) objArr[2]).booleanValue());
            return 0;
        }
    }

    public oz() {
        super((IBinder) bt0.c.b("account"));
    }

    @Override // androidx.appcompat.view.menu.j10
    public boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.ob
    public Object h() {
        return nz.b.b(bt0.c.b("account"));
    }

    @Override // androidx.appcompat.view.menu.ob
    public void i(Object obj, Object obj2) {
        l("account");
    }

    @Override // androidx.appcompat.view.menu.j8, androidx.appcompat.view.menu.ob
    public void j() {
        super.j();
        e("getPassword", new u());
        e("getUserData", new v());
        e("getAuthenticatorTypes", new s());
        e("getAccountsForPackage", new p());
        e("getAccountsByTypeForPackage", new o());
        e("getAccountByTypeAndFeatures", new j());
        e("getAccountsByFeatures", new n());
        e("getAccountsAsUser", new m());
        e("addAccountExplicitly", new d());
        e("removeAccountAsUser", new z());
        e("removeAccountExplicitly", new a0());
        e("copyAccountToUser", new h());
        e("invalidateAuthToken", new w());
        e("peekAuthToken", new x());
        e("setAuthToken", new c0());
        e("setPassword", new d0());
        e("clearPassword", new f());
        e("setUserData", new e0());
        e("updateAppPermission", new g0());
        e("getAuthToken", new q());
        e("addAccount", new b());
        e("addAccountAsUser", new c());
        e("updateCredentials", new h0());
        e("editProperties", new i());
        e("confirmCredentialsAsUser", new g());
        e("accountAuthenticated", new a());
        e("getAuthTokenLabel", new r());
        e("getPackagesAndVisibilityForAccount", new t());
        e("addAccountExplicitlyWithVisibility", new e());
        e("setAccountVisibility", new b0());
        e("getAccountVisibility", new k());
        e("getAccountsAndVisibilityForPackage", new l());
        e("registerAccountListener", new y());
        e("unregisterAccountListener", new f0());
    }
}

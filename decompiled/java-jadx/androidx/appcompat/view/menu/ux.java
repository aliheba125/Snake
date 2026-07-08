package androidx.appcompat.view.menu;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import androidx.appcompat.view.menu.zy;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class ux {
    public final or a;
    public final cd0 b;
    public final xp0 c;
    public final el0 d;
    public final el0 e;
    public final bs f;

    public ux(or orVar, cd0 cd0Var, el0 el0Var, el0 el0Var2, bs bsVar) {
        this(orVar, cd0Var, new xp0(orVar.j()), el0Var, el0Var2, bsVar);
    }

    public static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public static boolean g(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    public final zy0 c(zy0 zy0Var) {
        return zy0Var.f(new ic0(), new yg() { // from class: androidx.appcompat.view.menu.tx
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var2) {
                String h;
                h = ux.this.h(zy0Var2);
                return h;
            }
        });
    }

    public final String d() {
        try {
            return b(MessageDigest.getInstance("SHA-1").digest(this.a.l().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    public zy0 e() {
        return c(j(cd0.c(this.a), "*", new Bundle()));
    }

    public final String f(Bundle bundle) {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unexpected response: ");
        sb.append(bundle);
        new Throwable();
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    public final /* synthetic */ String h(zy0 zy0Var) {
        return f((Bundle) zy0Var.j(IOException.class));
    }

    public final void i(String str, String str2, Bundle bundle) {
        zy.a b;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.a.m().c());
        bundle.putString("gmsv", Integer.toString(this.b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.b.a());
        bundle.putString("app_ver_name", this.b.b());
        bundle.putString("firebase-app-name-hash", d());
        try {
            String b2 = ((m50) jz0.a(this.f.b(false))).b();
            if (!TextUtils.isEmpty(b2)) {
                bundle.putString("Goog-Firebase-Installations-Auth", b2);
            }
        } catch (InterruptedException | ExecutionException unused) {
        }
        bundle.putString("appid", (String) jz0.a(this.f.a()));
        bundle.putString("cliv", "fcm-23.4.0");
        zy zyVar = (zy) this.e.get();
        l41 l41Var = (l41) this.d.get();
        if (zyVar == null || l41Var == null || (b = zyVar.b("fire-iid")) == zy.a.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(b.c()));
        bundle.putString("Firebase-Client", l41Var.a());
    }

    public final zy0 j(String str, String str2, Bundle bundle) {
        try {
            i(str, str2, bundle);
            return this.c.b(bundle);
        } catch (InterruptedException | ExecutionException e) {
            return jz0.d(e);
        }
    }

    public zy0 k(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(j(str, "/topics/" + str2, bundle));
    }

    public zy0 l(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return c(j(str, "/topics/" + str2, bundle));
    }

    public ux(or orVar, cd0 cd0Var, xp0 xp0Var, el0 el0Var, el0 el0Var2, bs bsVar) {
        this.a = orVar;
        this.b = cd0Var;
        this.c = xp0Var;
        this.d = el0Var;
        this.e = el0Var2;
        this.f = bsVar;
    }
}

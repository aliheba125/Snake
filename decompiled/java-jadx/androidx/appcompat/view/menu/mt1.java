package androidx.appcompat.view.menu;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class mt1 {
    public static final AtomicReference b = new AtomicReference();
    public static final AtomicReference c = new AtomicReference();
    public static final AtomicReference d = new AtomicReference();
    public final lt1 a;

    public mt1(lt1 lt1Var) {
        this.a = lt1Var;
    }

    public static String d(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        mj0.i(strArr);
        mj0.i(strArr2);
        mj0.i(atomicReference);
        mj0.a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            Object obj = strArr[i];
            if (str == obj || (str != null && str.equals(obj))) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        if (strArr3[i] == null) {
                            strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                        }
                        str2 = strArr3[i];
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.a.a()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(f(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? e(new Object[]{obj}) : obj instanceof Object[] ? e((Object[]) obj) : obj instanceof ArrayList ? e(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    public final String b(oi1 oi1Var) {
        if (oi1Var == null) {
            return null;
        }
        if (!this.a.a()) {
            return oi1Var.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(oi1Var.o);
        sb.append(",name=");
        sb.append(c(oi1Var.m));
        sb.append(",params=");
        ei1 ei1Var = oi1Var.n;
        sb.append(ei1Var != null ? !this.a.a() ? ei1Var.toString() : a(ei1Var.k()) : null);
        return sb.toString();
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.a() ? str : d(str, nz1.c, nz1.a, b);
    }

    public final String e(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String a = obj instanceof Bundle ? a((Bundle) obj) : String.valueOf(obj);
            if (a != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(a);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final String f(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.a() ? str : d(str, rz1.b, rz1.a, c);
    }

    public final String g(String str) {
        if (str == null) {
            return null;
        }
        if (!this.a.a()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return d(str, oz1.b, oz1.a, d);
        }
        return "experiment_id(" + str + ")";
    }
}

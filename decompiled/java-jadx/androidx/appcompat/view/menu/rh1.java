package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.l40;

/* loaded from: classes.dex */
public abstract class rh1 {
    public static final o40 a = o40.x("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");
    public static final l40 b = l40.x("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");
    public static final l40 c = l40.w("auto", "app", "am");
    public static final l40 d = l40.v("_r", "_dbg");
    public static final l40 e = new l40.a().e(oz1.a).e(oz1.b).f();
    public static final l40 f = l40.v("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static void a(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean b(String str, Bundle bundle) {
        if (b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        l40 l40Var = d;
        int size = l40Var.size();
        int i = 0;
        while (i < size) {
            Object obj = l40Var.get(i);
            i++;
            if (bundle.containsKey((String) obj)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (e.contains(str2)) {
            return false;
        }
        l40 l40Var = f;
        int size = l40Var.size();
        int i = 0;
        while (i < size) {
            Object obj = l40Var.get(i);
            i++;
            if (str2.matches((String) obj)) {
                return false;
            }
        }
        return true;
    }

    public static boolean d(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!e(str) || bundle == null) {
            return false;
        }
        l40 l40Var = d;
        int size = l40Var.size();
        int i = 0;
        while (i < size) {
            Object obj = l40Var.get(i);
            i++;
            if (bundle.containsKey((String) obj)) {
                return false;
            }
        }
        str.hashCode();
        switch (str) {
            case "fcm":
                bundle.putString("_cis", "fcm_integration");
                return true;
            case "fdl":
                bundle.putString("_cis", "fdl_integration");
                return true;
            case "fiam":
                bundle.putString("_cis", "fiam_integration");
                return true;
            default:
                return false;
        }
    }

    public static boolean e(String str) {
        return !c.contains(str);
    }
}

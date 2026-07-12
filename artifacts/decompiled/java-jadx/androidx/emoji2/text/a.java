package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import androidx.appcompat.view.menu.qj0;
import androidx.appcompat.view.menu.su;
import androidx.emoji2.text.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: androidx.emoji2.text.a$a, reason: collision with other inner class name */
    public static class C0039a {
        public final b a;

        public C0039a(b bVar) {
            this.a = bVar == null ? e() : bVar;
        }

        public static b e() {
            return new d();
        }

        public final c.AbstractC0041c a(Context context, su suVar) {
            if (suVar == null) {
                return null;
            }
            return new e(context, suVar);
        }

        public final List b(Signature[] signatureArr) {
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            return Collections.singletonList(arrayList);
        }

        public c.AbstractC0041c c(Context context) {
            return a(context, h(context));
        }

        public final su d(ProviderInfo providerInfo, PackageManager packageManager) {
            String str = providerInfo.authority;
            String str2 = providerInfo.packageName;
            return new su(str, str2, "emojicompat-emoji-font", b(this.a.b(packageManager, str2)));
        }

        public final boolean f(ProviderInfo providerInfo) {
            ApplicationInfo applicationInfo;
            return (providerInfo == null || (applicationInfo = providerInfo.applicationInfo) == null || (applicationInfo.flags & 1) != 1) ? false : true;
        }

        public final ProviderInfo g(PackageManager packageManager) {
            Iterator it = this.a.c(packageManager, new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
            while (it.hasNext()) {
                ProviderInfo a = this.a.a((ResolveInfo) it.next());
                if (f(a)) {
                    return a;
                }
            }
            return null;
        }

        public su h(Context context) {
            PackageManager packageManager = context.getPackageManager();
            qj0.h(packageManager, "Package manager required to locate emoji font provider");
            ProviderInfo g = g(packageManager);
            if (g == null) {
                return null;
            }
            try {
                return d(g, packageManager);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    public static class b {
        public abstract ProviderInfo a(ResolveInfo resolveInfo);

        public abstract Signature[] b(PackageManager packageManager, String str);

        public abstract List c(PackageManager packageManager, Intent intent, int i);
    }

    public static class c extends b {
        @Override // androidx.emoji2.text.a.b
        public ProviderInfo a(ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.a.b
        public List c(PackageManager packageManager, Intent intent, int i) {
            return packageManager.queryIntentContentProviders(intent, i);
        }
    }

    public static class d extends c {
        @Override // androidx.emoji2.text.a.b
        public Signature[] b(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    public static e a(Context context) {
        return (e) new C0039a(null).c(context);
    }
}

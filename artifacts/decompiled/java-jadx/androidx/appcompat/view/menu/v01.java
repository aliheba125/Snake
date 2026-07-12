package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class v01 extends ContextWrapper {
    public static final Object c = new Object();
    public static ArrayList d;
    public final Resources a;
    public final Resources.Theme b;

    public v01(Context context) {
        super(context);
        if (!b51.c()) {
            this.a = new x01(this, context.getResources());
            this.b = null;
            return;
        }
        b51 b51Var = new b51(this, context.getResources());
        this.a = b51Var;
        Resources.Theme newTheme = b51Var.newTheme();
        this.b = newTheme;
        newTheme.setTo(context.getTheme());
    }

    public static boolean a(Context context) {
        if ((context instanceof v01) || (context.getResources() instanceof x01) || (context.getResources() instanceof b51)) {
            return false;
        }
        return b51.c();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (c) {
            try {
                ArrayList arrayList = d;
                if (arrayList == null) {
                    d = new ArrayList();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference weakReference = (WeakReference) d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            d.remove(size);
                        }
                    }
                    for (int size2 = d.size() - 1; size2 >= 0; size2--) {
                        WeakReference weakReference2 = (WeakReference) d.get(size2);
                        v01 v01Var = weakReference2 != null ? (v01) weakReference2.get() : null;
                        if (v01Var != null && v01Var.getBaseContext() == context) {
                            return v01Var;
                        }
                    }
                }
                v01 v01Var2 = new v01(context);
                d.add(new WeakReference(v01Var2));
                return v01Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}

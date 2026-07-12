package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.appcompat.view.menu.wu;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public abstract class uu {
    public static final pa0 a = new pa0(16);
    public static final ExecutorService b = yo0.a("fonts-androidx", 10, 10000);
    public static final Object c = new Object();
    public static final nu0 d = new nu0();

    public class a implements Callable {
        public final /* synthetic */ String a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ su c;
        public final /* synthetic */ int d;

        public a(String str, Context context, su suVar, int i) {
            this.a = str;
            this.b = context;
            this.c = suVar;
            this.d = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return uu.c(this.a, this.b, this.c, this.d);
        }
    }

    public class b implements pf {
        public final /* synthetic */ p9 a;

        public b(p9 p9Var) {
            this.a = p9Var;
        }

        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.a.b(eVar);
        }
    }

    public class c implements Callable {
        public final /* synthetic */ String a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ su c;
        public final /* synthetic */ int d;

        public c(String str, Context context, su suVar, int i) {
            this.a = str;
            this.b = context;
            this.c = suVar;
            this.d = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            try {
                return uu.c(this.a, this.b, this.c, this.d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    public class d implements pf {
        public final /* synthetic */ String a;

        public d(String str) {
            this.a = str;
        }

        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            synchronized (uu.c) {
                try {
                    nu0 nu0Var = uu.d;
                    ArrayList arrayList = (ArrayList) nu0Var.get(this.a);
                    if (arrayList == null) {
                        return;
                    }
                    nu0Var.remove(this.a);
                    for (int i = 0; i < arrayList.size(); i++) {
                        ((pf) arrayList.get(i)).accept(eVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class e {
        public final Typeface a;
        public final int b;

        public e(int i) {
            this.a = null;
            this.b = i;
        }

        public boolean a() {
            return this.b == 0;
        }

        public e(Typeface typeface) {
            this.a = typeface;
            this.b = 0;
        }
    }

    public static String a(su suVar, int i) {
        return suVar.d() + "-" + i;
    }

    public static int b(wu.a aVar) {
        int i = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        wu.b[] b2 = aVar.b();
        if (b2 != null && b2.length != 0) {
            i = 0;
            for (wu.b bVar : b2) {
                int b3 = bVar.b();
                if (b3 != 0) {
                    if (b3 < 0) {
                        return -3;
                    }
                    return b3;
                }
            }
        }
        return i;
    }

    public static e c(String str, Context context, su suVar, int i) {
        pa0 pa0Var = a;
        Typeface typeface = (Typeface) pa0Var.c(str);
        if (typeface != null) {
            return new e(typeface);
        }
        try {
            wu.a e2 = ru.e(context, suVar, null);
            int b2 = b(e2);
            if (b2 != 0) {
                return new e(b2);
            }
            Typeface b3 = s21.b(context, null, e2.b(), i);
            if (b3 == null) {
                return new e(-3);
            }
            pa0Var.d(str, b3);
            return new e(b3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }

    public static Typeface d(Context context, su suVar, int i, Executor executor, p9 p9Var) {
        String a2 = a(suVar, i);
        Typeface typeface = (Typeface) a.c(a2);
        if (typeface != null) {
            p9Var.b(new e(typeface));
            return typeface;
        }
        b bVar = new b(p9Var);
        synchronized (c) {
            try {
                nu0 nu0Var = d;
                ArrayList arrayList = (ArrayList) nu0Var.get(a2);
                if (arrayList != null) {
                    arrayList.add(bVar);
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(bVar);
                nu0Var.put(a2, arrayList2);
                c cVar = new c(a2, context, suVar, i);
                if (executor == null) {
                    executor = b;
                }
                yo0.b(executor, cVar, new d(a2));
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Typeface e(Context context, su suVar, p9 p9Var, int i, int i2) {
        String a2 = a(suVar, i);
        Typeface typeface = (Typeface) a.c(a2);
        if (typeface != null) {
            p9Var.b(new e(typeface));
            return typeface;
        }
        if (i2 == -1) {
            e c2 = c(a2, context, suVar, i);
            p9Var.b(c2);
            return c2.a;
        }
        try {
            e eVar = (e) yo0.c(b, new a(a2, context, suVar, i), i2);
            p9Var.b(eVar);
            return eVar.a;
        } catch (InterruptedException unused) {
            p9Var.b(new e(-3));
            return null;
        }
    }
}

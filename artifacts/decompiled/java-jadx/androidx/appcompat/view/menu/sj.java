package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.appcompat.view.menu.zy;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class sj implements yy, zy {
    public final el0 a;
    public final Context b;
    public final el0 c;
    public final Set d;
    public final Executor e;

    public sj(final Context context, final String str, Set set, el0 el0Var, Executor executor) {
        this(new el0() { // from class: androidx.appcompat.view.menu.rj
            @Override // androidx.appcompat.view.menu.el0
            public final Object get() {
                az j;
                j = sj.j(context, str);
                return j;
            }
        }, set, executor, el0Var, context);
    }

    public static ud g() {
        final ul0 a = ul0.a(u7.class, Executor.class);
        return ud.f(sj.class, yy.class, zy.class).b(il.j(Context.class)).b(il.j(or.class)).b(il.l(wy.class)).b(il.k(l41.class)).b(il.i(a)).f(new de() { // from class: androidx.appcompat.view.menu.oj
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                sj h;
                h = sj.h(ul0.this, xdVar);
                return h;
            }
        }).d();
    }

    public static /* synthetic */ sj h(ul0 ul0Var, xd xdVar) {
        return new sj((Context) xdVar.a(Context.class), ((or) xdVar.a(or.class)).n(), xdVar.c(wy.class), xdVar.d(l41.class), (Executor) xdVar.e(ul0Var));
    }

    public static /* synthetic */ az j(Context context, String str) {
        return new az(context, str);
    }

    @Override // androidx.appcompat.view.menu.yy
    public zy0 a() {
        return o41.a(this.b) ^ true ? jz0.e("") : jz0.c(this.e, new Callable() { // from class: androidx.appcompat.view.menu.pj
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String i;
                i = sj.this.i();
                return i;
            }
        });
    }

    @Override // androidx.appcompat.view.menu.zy
    public synchronized zy.a b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        az azVar = (az) this.a.get();
        if (!azVar.i(currentTimeMillis)) {
            return zy.a.NONE;
        }
        azVar.g();
        return zy.a.GLOBAL;
    }

    public final /* synthetic */ String i() {
        String byteArrayOutputStream;
        synchronized (this) {
            try {
                az azVar = (az) this.a.get();
                List c = azVar.c();
                azVar.b();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < c.size(); i++) {
                    bz bzVar = (bz) c.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", bzVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) bzVar.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return byteArrayOutputStream;
    }

    public final /* synthetic */ Void k() {
        synchronized (this) {
            ((az) this.a.get()).k(System.currentTimeMillis(), ((l41) this.c.get()).a());
        }
        return null;
    }

    public zy0 l() {
        if (this.d.size() > 0 && !(!o41.a(this.b))) {
            return jz0.c(this.e, new Callable() { // from class: androidx.appcompat.view.menu.qj
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Void k;
                    k = sj.this.k();
                    return k;
                }
            });
        }
        return jz0.e(null);
    }

    public sj(el0 el0Var, Set set, Executor executor, el0 el0Var2, Context context) {
        this.a = el0Var;
        this.d = set;
        this.e = executor;
        this.c = el0Var2;
        this.b = context;
    }
}

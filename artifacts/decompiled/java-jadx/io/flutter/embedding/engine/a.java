package io.flutter.embedding.engine;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import androidx.appcompat.view.menu.ae0;
import androidx.appcompat.view.menu.bj0;
import androidx.appcompat.view.menu.ck0;
import androidx.appcompat.view.menu.ea0;
import androidx.appcompat.view.menu.fi0;
import androidx.appcompat.view.menu.i1;
import androidx.appcompat.view.menu.jp0;
import androidx.appcompat.view.menu.jt;
import androidx.appcompat.view.menu.jw0;
import androidx.appcompat.view.menu.jx;
import androidx.appcompat.view.menu.m7;
import androidx.appcompat.view.menu.o61;
import androidx.appcompat.view.menu.pk;
import androidx.appcompat.view.menu.pt;
import androidx.appcompat.view.menu.qe0;
import androidx.appcompat.view.menu.qt0;
import androidx.appcompat.view.menu.ry0;
import androidx.appcompat.view.menu.s90;
import androidx.appcompat.view.menu.si;
import androidx.appcompat.view.menu.st;
import androidx.appcompat.view.menu.t90;
import androidx.appcompat.view.menu.x80;
import androidx.appcompat.view.menu.xz0;
import androidx.appcompat.view.menu.z;
import androidx.appcompat.view.menu.zj0;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class a implements o61.a {
    public final FlutterJNI a;
    public final FlutterRenderer b;
    public final si c;
    public final jt d;
    public final t90 e;
    public final z f;
    public final pk g;
    public final x80 h;
    public final s90 i;
    public final ae0 j;
    public final qe0 k;
    public final m7 l;
    public final jp0 m;
    public final fi0 n;
    public final zj0 o;
    public final qt0 p;
    public final jw0 q;
    public final ry0 r;
    public final xz0 s;
    public final bj0 t;
    public final Set u;
    public final b v;

    /* renamed from: io.flutter.embedding.engine.a$a, reason: collision with other inner class name */
    public class C0067a implements b {
        public C0067a() {
        }

        @Override // io.flutter.embedding.engine.a.b
        public void a() {
        }

        @Override // io.flutter.embedding.engine.a.b
        public void b() {
            ea0.f("FlutterEngine", "onPreEngineRestart()");
            Iterator it = a.this.u.iterator();
            while (it.hasNext()) {
                ((b) it.next()).b();
            }
            a.this.t.X();
            a.this.m.g();
        }
    }

    public interface b {
        void a();

        void b();
    }

    public a(Context context, st stVar, FlutterJNI flutterJNI, bj0 bj0Var, String[] strArr, boolean z, boolean z2) {
        this(context, stVar, flutterJNI, bj0Var, strArr, z, z2, null);
    }

    @Override // androidx.appcompat.view.menu.o61.a
    public void a(float f, float f2, float f3) {
        this.a.updateDisplayMetrics(0, f, f2, f3);
    }

    public void e(b bVar) {
        this.u.add(bVar);
    }

    public final void f() {
        ea0.f("FlutterEngine", "Attaching to JNI.");
        this.a.attachToNative();
        if (!y()) {
            throw new RuntimeException("FlutterEngine failed to attach to its native Object reference.");
        }
    }

    public void g() {
        ea0.f("FlutterEngine", "Destroying.");
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a();
        }
        this.d.l();
        this.t.T();
        this.c.j();
        this.a.removeEngineLifecycleListener(this.v);
        this.a.setDeferredComponentManager(null);
        this.a.detachFromNativeAndReleaseResources();
        pt.e().a();
    }

    public z h() {
        return this.f;
    }

    public i1 i() {
        return this.d;
    }

    public m7 j() {
        return this.l;
    }

    public si k() {
        return this.c;
    }

    public x80 l() {
        return this.h;
    }

    public t90 m() {
        return this.e;
    }

    public ae0 n() {
        return this.j;
    }

    public qe0 o() {
        return this.k;
    }

    public fi0 p() {
        return this.n;
    }

    public bj0 q() {
        return this.t;
    }

    public zj0 r() {
        return this.o;
    }

    public FlutterRenderer s() {
        return this.b;
    }

    public jp0 t() {
        return this.m;
    }

    public qt0 u() {
        return this.p;
    }

    public jw0 v() {
        return this.q;
    }

    public ry0 w() {
        return this.r;
    }

    public xz0 x() {
        return this.s;
    }

    public final boolean y() {
        return this.a.isAttached();
    }

    public a z(Context context, si.b bVar, String str, List list, bj0 bj0Var, boolean z, boolean z2) {
        if (y()) {
            return new a(context, null, this.a.spawn(bVar.c, bVar.b, str, list), bj0Var, null, z, z2);
        }
        throw new IllegalStateException("Spawn can only be called on a fully constructed FlutterEngine");
    }

    public a(Context context, st stVar, FlutterJNI flutterJNI, bj0 bj0Var, String[] strArr, boolean z, boolean z2, io.flutter.embedding.engine.b bVar) {
        AssetManager assets;
        this.u = new HashSet();
        this.v = new C0067a();
        try {
            assets = context.createPackageContext(context.getPackageName(), 0).getAssets();
        } catch (PackageManager.NameNotFoundException unused) {
            assets = context.getAssets();
        }
        pt e = pt.e();
        flutterJNI = flutterJNI == null ? e.d().a() : flutterJNI;
        this.a = flutterJNI;
        si siVar = new si(flutterJNI, assets);
        this.c = siVar;
        siVar.i();
        pt.e().a();
        this.f = new z(siVar, flutterJNI);
        this.g = new pk(siVar);
        this.h = new x80(siVar);
        s90 s90Var = new s90(siVar);
        this.i = s90Var;
        this.j = new ae0(siVar);
        this.k = new qe0(siVar);
        this.l = new m7(siVar);
        this.n = new fi0(siVar);
        this.o = new zj0(siVar, context.getPackageManager());
        this.m = new jp0(siVar, z2);
        this.p = new qt0(siVar);
        this.q = new jw0(siVar);
        this.r = new ry0(siVar);
        this.s = new xz0(siVar);
        t90 t90Var = new t90(context, s90Var);
        this.e = t90Var;
        stVar = stVar == null ? e.c() : stVar;
        if (!flutterJNI.isAttached()) {
            stVar.k(context.getApplicationContext());
            stVar.f(context, strArr);
        }
        flutterJNI.addEngineLifecycleListener(this.v);
        flutterJNI.setPlatformViewsController(bj0Var);
        flutterJNI.setLocalizationPlugin(t90Var);
        e.a();
        flutterJNI.setDeferredComponentManager(null);
        if (!flutterJNI.isAttached()) {
            f();
        }
        this.b = new FlutterRenderer(flutterJNI);
        this.t = bj0Var;
        bj0Var.R();
        jt jtVar = new jt(context.getApplicationContext(), this, stVar, bVar);
        this.d = jtVar;
        t90Var.d(context.getResources().getConfiguration());
        if (z && stVar.e()) {
            jx.a(this);
        }
        o61.a(context, this);
        jtVar.j(new ck0(r()));
    }
}

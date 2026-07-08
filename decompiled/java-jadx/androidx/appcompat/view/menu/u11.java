package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class u11 {
    public static s11 a = new l5();
    public static ThreadLocal b = new ThreadLocal();
    public static ArrayList c = new ArrayList();

    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public s11 a;
        public ViewGroup b;

        /* renamed from: androidx.appcompat.view.menu.u11$a$a, reason: collision with other inner class name */
        public class C0030a extends t11 {
            public final /* synthetic */ o4 a;

            public C0030a(o4 o4Var) {
                this.a = o4Var;
            }

            @Override // androidx.appcompat.view.menu.s11.f
            public void e(s11 s11Var) {
                ((ArrayList) this.a.get(a.this.b)).remove(s11Var);
                s11Var.S(this);
            }
        }

        public a(s11 s11Var, ViewGroup viewGroup) {
            this.a = s11Var;
            this.b = viewGroup;
        }

        public final void a() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!u11.c.remove(this.b)) {
                return true;
            }
            o4 b = u11.b();
            ArrayList arrayList = (ArrayList) b.get(this.b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                b.put(this.b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.a);
            this.a.a(new C0030a(b));
            this.a.n(this.b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((s11) it.next()).U(this.b);
                }
            }
            this.a.R(this.b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            u11.c.remove(this.b);
            ArrayList arrayList = (ArrayList) u11.b().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((s11) it.next()).U(this.b);
                }
            }
            this.a.o(true);
        }
    }

    public static void a(ViewGroup viewGroup, s11 s11Var) {
        if (c.contains(viewGroup) || !m51.O(viewGroup)) {
            return;
        }
        c.add(viewGroup);
        if (s11Var == null) {
            s11Var = a;
        }
        s11 clone = s11Var.clone();
        d(viewGroup, clone);
        sr0.b(viewGroup, null);
        c(viewGroup, clone);
    }

    public static o4 b() {
        o4 o4Var;
        WeakReference weakReference = (WeakReference) b.get();
        if (weakReference != null && (o4Var = (o4) weakReference.get()) != null) {
            return o4Var;
        }
        o4 o4Var2 = new o4();
        b.set(new WeakReference(o4Var2));
        return o4Var2;
    }

    public static void c(ViewGroup viewGroup, s11 s11Var) {
        if (s11Var == null || viewGroup == null) {
            return;
        }
        a aVar = new a(s11Var, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    public static void d(ViewGroup viewGroup, s11 s11Var) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((s11) it.next()).Q(viewGroup);
            }
        }
        if (s11Var != null) {
            s11Var.n(viewGroup, true);
        }
        sr0.a(viewGroup);
    }
}

package androidx.appcompat.view.menu;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.s11;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class bw extends aw {

    public class a extends s11.e {
        public final /* synthetic */ Rect a;

        public a(Rect rect) {
            this.a = rect;
        }
    }

    public class b implements s11.f {
        public final /* synthetic */ View a;
        public final /* synthetic */ ArrayList b;

        public b(View view, ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void a(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void b(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void c(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void d(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            s11Var.S(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.b.get(i)).setVisibility(0);
            }
        }
    }

    public class c extends t11 {
        public final /* synthetic */ Object a;
        public final /* synthetic */ ArrayList b;
        public final /* synthetic */ Object c;
        public final /* synthetic */ ArrayList d;
        public final /* synthetic */ Object e;
        public final /* synthetic */ ArrayList f;

        public c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.c = obj2;
            this.d = arrayList2;
            this.e = obj3;
            this.f = arrayList3;
        }

        @Override // androidx.appcompat.view.menu.t11, androidx.appcompat.view.menu.s11.f
        public void c(s11 s11Var) {
            Object obj = this.a;
            if (obj != null) {
                bw.this.D(obj, this.b, null);
            }
            Object obj2 = this.c;
            if (obj2 != null) {
                bw.this.D(obj2, this.d, null);
            }
            Object obj3 = this.e;
            if (obj3 != null) {
                bw.this.D(obj3, this.f, null);
            }
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            s11Var.S(this);
        }
    }

    public class d extends s11.e {
        public final /* synthetic */ Rect a;

        public d(Rect rect) {
            this.a = rect;
        }
    }

    public static boolean C(s11 s11Var) {
        return (aw.l(s11Var.C()) && aw.l(s11Var.D()) && aw.l(s11Var.E())) ? false : true;
    }

    @Override // androidx.appcompat.view.menu.aw
    public void A(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        w11 w11Var = (w11) obj;
        if (w11Var != null) {
            w11Var.F().clear();
            w11Var.F().addAll(arrayList2);
            D(w11Var, arrayList, arrayList2);
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        w11 w11Var = new w11();
        w11Var.h0((s11) obj);
        return w11Var;
    }

    public void D(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        s11 s11Var = (s11) obj;
        int i = 0;
        if (s11Var instanceof w11) {
            w11 w11Var = (w11) s11Var;
            int k0 = w11Var.k0();
            while (i < k0) {
                D(w11Var.j0(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (C(s11Var)) {
            return;
        }
        List F = s11Var.F();
        if (F.size() == arrayList.size() && F.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i < size) {
                s11Var.b((View) arrayList2.get(i));
                i++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                s11Var.T((View) arrayList.get(size2));
            }
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public void a(Object obj, View view) {
        if (obj != null) {
            ((s11) obj).b(view);
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public void b(Object obj, ArrayList arrayList) {
        s11 s11Var = (s11) obj;
        if (s11Var == null) {
            return;
        }
        int i = 0;
        if (s11Var instanceof w11) {
            w11 w11Var = (w11) s11Var;
            int k0 = w11Var.k0();
            while (i < k0) {
                b(w11Var.j0(i), arrayList);
                i++;
            }
            return;
        }
        if (C(s11Var) || !aw.l(s11Var.F())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            s11Var.b((View) arrayList.get(i));
            i++;
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public void e(ViewGroup viewGroup, Object obj) {
        u11.a(viewGroup, (s11) obj);
    }

    @Override // androidx.appcompat.view.menu.aw
    public boolean g(Object obj) {
        return obj instanceof s11;
    }

    @Override // androidx.appcompat.view.menu.aw
    public Object h(Object obj) {
        if (obj != null) {
            return ((s11) obj).clone();
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.aw
    public Object o(Object obj, Object obj2, Object obj3) {
        s11 s11Var = (s11) obj;
        s11 s11Var2 = (s11) obj2;
        s11 s11Var3 = (s11) obj3;
        if (s11Var != null && s11Var2 != null) {
            s11Var = new w11().h0(s11Var).h0(s11Var2).p0(1);
        } else if (s11Var == null) {
            s11Var = s11Var2 != null ? s11Var2 : null;
        }
        if (s11Var3 == null) {
            return s11Var;
        }
        w11 w11Var = new w11();
        if (s11Var != null) {
            w11Var.h0(s11Var);
        }
        w11Var.h0(s11Var3);
        return w11Var;
    }

    @Override // androidx.appcompat.view.menu.aw
    public Object p(Object obj, Object obj2, Object obj3) {
        w11 w11Var = new w11();
        if (obj != null) {
            w11Var.h0((s11) obj);
        }
        if (obj2 != null) {
            w11Var.h0((s11) obj2);
        }
        if (obj3 != null) {
            w11Var.h0((s11) obj3);
        }
        return w11Var;
    }

    @Override // androidx.appcompat.view.menu.aw
    public void r(Object obj, View view, ArrayList arrayList) {
        ((s11) obj).a(new b(view, arrayList));
    }

    @Override // androidx.appcompat.view.menu.aw
    public void s(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((s11) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.appcompat.view.menu.aw
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((s11) obj).Y(new d(rect));
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((s11) obj).Y(new a(rect));
        }
    }

    @Override // androidx.appcompat.view.menu.aw
    public void z(Object obj, View view, ArrayList arrayList) {
        w11 w11Var = (w11) obj;
        List F = w11Var.F();
        F.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            aw.f(F, (View) arrayList.get(i));
        }
        F.add(view);
        arrayList.add(view);
        b(w11Var, arrayList);
    }
}

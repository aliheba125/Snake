package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.aj;
import androidx.appcompat.view.menu.an0;
import androidx.appcompat.view.menu.b0;
import androidx.appcompat.view.menu.bi0;
import androidx.appcompat.view.menu.bj;
import androidx.appcompat.view.menu.em0;
import androidx.appcompat.view.menu.jy0;
import androidx.appcompat.view.menu.k9;
import androidx.appcompat.view.menu.lg0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.p0;
import androidx.appcompat.view.menu.q41;
import androidx.appcompat.view.menu.sm0;
import androidx.appcompat.view.menu.td0;
import androidx.appcompat.view.menu.um0;
import androidx.appcompat.view.menu.vm0;
import androidx.appcompat.view.menu.wa1;
import androidx.appcompat.view.menu.xu0;
import androidx.appcompat.view.menu.yi;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;

/* loaded from: classes.dex */
public final class c<S> extends bi0 {
    public static final Object n0 = "MONTHS_VIEW_GROUP_TAG";
    public static final Object o0 = "NAVIGATION_PREV_TAG";
    public static final Object p0 = "NAVIGATION_NEXT_TAG";
    public static final Object q0 = "SELECTOR_TOGGLE_TAG";
    public int c0;
    public com.google.android.material.datepicker.a d0;
    public td0 e0;
    public l f0;
    public k9 g0;
    public RecyclerView h0;
    public RecyclerView i0;
    public View j0;
    public View k0;
    public View l0;
    public View m0;

    public class a implements View.OnClickListener {
        public final /* synthetic */ com.google.android.material.datepicker.f a;

        public a(com.google.android.material.datepicker.f fVar) {
            this.a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i2 = c.this.u1().i2() - 1;
            if (i2 >= 0) {
                c.this.x1(this.a.u(i2));
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ int m;

        public b(int i) {
            this.m = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.i0.n1(this.m);
        }
    }

    /* renamed from: com.google.android.material.datepicker.c$c, reason: collision with other inner class name */
    public class C0063c extends b0 {
        public C0063c() {
        }

        @Override // androidx.appcompat.view.menu.b0
        public void g(View view, p0 p0Var) {
            super.g(view, p0Var);
            p0Var.e0(null);
        }
    }

    public class d extends xu0 {
        public final /* synthetic */ int I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.I = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void S1(RecyclerView.z zVar, int[] iArr) {
            if (this.I == 0) {
                iArr[0] = c.this.i0.getWidth();
                iArr[1] = c.this.i0.getWidth();
            } else {
                iArr[0] = c.this.i0.getHeight();
                iArr[1] = c.this.i0.getHeight();
            }
        }
    }

    public class e implements m {
        public e() {
        }

        @Override // com.google.android.material.datepicker.c.m
        public void a(long j) {
            if (c.this.d0.f().g(j)) {
                c.j1(c.this);
                throw null;
            }
        }
    }

    public class f extends b0 {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.b0
        public void g(View view, p0 p0Var) {
            super.g(view, p0Var);
            p0Var.u0(false);
        }
    }

    public class g extends RecyclerView.n {
        public final Calendar a = q41.i();
        public final Calendar b = q41.i();

        public g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.n
        public void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
            if ((recyclerView.getAdapter() instanceof wa1) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                c.j1(c.this);
                throw null;
            }
        }
    }

    public class h extends b0 {
        public h() {
        }

        @Override // androidx.appcompat.view.menu.b0
        public void g(View view, p0 p0Var) {
            super.g(view, p0Var);
            p0Var.m0(c.this.m0.getVisibility() == 0 ? c.this.O(an0.r) : c.this.O(an0.p));
        }
    }

    public class i extends RecyclerView.s {
        public final /* synthetic */ com.google.android.material.datepicker.f a;
        public final /* synthetic */ MaterialButton b;

        public i(com.google.android.material.datepicker.f fVar, MaterialButton materialButton) {
            this.a = fVar;
            this.b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, int i) {
            if (i == 0) {
                recyclerView.announceForAccessibility(this.b.getText());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            int f2 = i < 0 ? c.this.u1().f2() : c.this.u1().i2();
            c.this.e0 = this.a.u(f2);
            this.b.setText(this.a.v(f2));
        }
    }

    public class j implements View.OnClickListener {
        public j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.A1();
        }
    }

    public class k implements View.OnClickListener {
        public final /* synthetic */ com.google.android.material.datepicker.f a;

        public k(com.google.android.material.datepicker.f fVar) {
            this.a = fVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int f2 = c.this.u1().f2() + 1;
            if (f2 < c.this.i0.getAdapter().c()) {
                c.this.x1(this.a.u(f2));
            }
        }
    }

    public enum l {
        DAY,
        YEAR
    }

    public interface m {
        void a(long j);
    }

    public static /* synthetic */ yi j1(c cVar) {
        cVar.getClass();
        return null;
    }

    public static int s1(Context context) {
        return context.getResources().getDimensionPixelSize(em0.H);
    }

    public static int t1(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(em0.O) + resources.getDimensionPixelOffset(em0.P) + resources.getDimensionPixelOffset(em0.N);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(em0.J);
        int i2 = com.google.android.material.datepicker.e.e;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(em0.H) * i2) + ((i2 - 1) * resources.getDimensionPixelOffset(em0.M)) + resources.getDimensionPixelOffset(em0.F);
    }

    public static c v1(yi yiVar, int i2, com.google.android.material.datepicker.a aVar, aj ajVar) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", yiVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", ajVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", aVar.l());
        cVar.X0(bundle);
        return cVar;
    }

    public void A1() {
        l lVar = this.f0;
        l lVar2 = l.YEAR;
        if (lVar == lVar2) {
            y1(l.DAY);
        } else if (lVar == l.DAY) {
            y1(lVar2);
        }
    }

    @Override // androidx.appcompat.view.menu.av
    public void b0(Bundle bundle) {
        super.b0(bundle);
        if (bundle == null) {
            bundle = o();
        }
        this.c0 = bundle.getInt("THEME_RES_ID_KEY");
        jy0.a(bundle.getParcelable("GRID_SELECTOR_KEY"));
        this.d0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        jy0.a(bundle.getParcelable("DAY_VIEW_DECORATOR_KEY"));
        this.e0 = (td0) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.appcompat.view.menu.av
    public View f0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(q(), this.c0);
        this.g0 = new k9(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        td0 m2 = this.d0.m();
        if (com.google.android.material.datepicker.d.B1(contextThemeWrapper)) {
            i2 = vm0.n;
            i3 = 1;
        } else {
            i2 = vm0.l;
            i3 = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        inflate.setMinimumHeight(t1(R0()));
        GridView gridView = (GridView) inflate.findViewById(sm0.u);
        m51.k0(gridView, new C0063c());
        int j2 = this.d0.j();
        gridView.setAdapter((ListAdapter) (j2 > 0 ? new bj(j2) : new bj()));
        gridView.setNumColumns(m2.p);
        gridView.setEnabled(false);
        this.i0 = (RecyclerView) inflate.findViewById(sm0.x);
        this.i0.setLayoutManager(new d(q(), i3, false, i3));
        this.i0.setTag(n0);
        com.google.android.material.datepicker.f fVar = new com.google.android.material.datepicker.f(contextThemeWrapper, null, this.d0, null, new e());
        this.i0.setAdapter(fVar);
        int integer = contextThemeWrapper.getResources().getInteger(um0.a);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(sm0.y);
        this.h0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.h0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.h0.setAdapter(new wa1(this));
            this.h0.g(n1());
        }
        if (inflate.findViewById(sm0.p) != null) {
            m1(inflate, fVar);
        }
        if (!com.google.android.material.datepicker.d.B1(contextThemeWrapper)) {
            new androidx.recyclerview.widget.j().b(this.i0);
        }
        this.i0.f1(fVar.w(this.e0));
        z1();
        return inflate;
    }

    @Override // androidx.appcompat.view.menu.bi0
    public boolean f1(lg0 lg0Var) {
        return super.f1(lg0Var);
    }

    public final void m1(View view, com.google.android.material.datepicker.f fVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(sm0.p);
        materialButton.setTag(q0);
        m51.k0(materialButton, new h());
        View findViewById = view.findViewById(sm0.r);
        this.j0 = findViewById;
        findViewById.setTag(o0);
        View findViewById2 = view.findViewById(sm0.q);
        this.k0 = findViewById2;
        findViewById2.setTag(p0);
        this.l0 = view.findViewById(sm0.y);
        this.m0 = view.findViewById(sm0.t);
        y1(l.DAY);
        materialButton.setText(this.e0.n());
        this.i0.j(new i(fVar, materialButton));
        materialButton.setOnClickListener(new j());
        this.k0.setOnClickListener(new k(fVar));
        this.j0.setOnClickListener(new a(fVar));
    }

    public final RecyclerView.n n1() {
        return new g();
    }

    public com.google.android.material.datepicker.a o1() {
        return this.d0;
    }

    public k9 p1() {
        return this.g0;
    }

    public td0 q1() {
        return this.e0;
    }

    @Override // androidx.appcompat.view.menu.av
    public void r0(Bundle bundle) {
        super.r0(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.c0);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.e0);
    }

    public yi r1() {
        return null;
    }

    public LinearLayoutManager u1() {
        return (LinearLayoutManager) this.i0.getLayoutManager();
    }

    public final void w1(int i2) {
        this.i0.post(new b(i2));
    }

    public void x1(td0 td0Var) {
        com.google.android.material.datepicker.f fVar = (com.google.android.material.datepicker.f) this.i0.getAdapter();
        int w = fVar.w(td0Var);
        int w2 = w - fVar.w(this.e0);
        boolean z = Math.abs(w2) > 3;
        boolean z2 = w2 > 0;
        this.e0 = td0Var;
        if (z && z2) {
            this.i0.f1(w - 3);
            w1(w);
        } else if (!z) {
            w1(w);
        } else {
            this.i0.f1(w + 3);
            w1(w);
        }
    }

    public void y1(l lVar) {
        this.f0 = lVar;
        if (lVar == l.YEAR) {
            this.h0.getLayoutManager().D1(((wa1) this.h0.getAdapter()).t(this.e0.o));
            this.l0.setVisibility(0);
            this.m0.setVisibility(8);
            this.j0.setVisibility(8);
            this.k0.setVisibility(8);
            return;
        }
        if (lVar == l.DAY) {
            this.l0.setVisibility(8);
            this.m0.setVisibility(0);
            this.j0.setVisibility(0);
            this.k0.setVisibility(0);
            x1(this.e0);
        }
    }

    public final void z1() {
        m51.k0(this.i0, new f());
    }
}

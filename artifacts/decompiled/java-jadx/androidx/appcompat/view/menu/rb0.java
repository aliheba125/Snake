package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class rb0<S> extends bi0 {
    public int c0;
    public com.google.android.material.datepicker.a d0;

    public class a extends lg0 {
        public a() {
        }
    }

    public static rb0 h1(yi yiVar, int i, com.google.android.material.datepicker.a aVar) {
        rb0 rb0Var = new rb0();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", yiVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        rb0Var.X0(bundle);
        return rb0Var;
    }

    @Override // androidx.appcompat.view.menu.av
    public void b0(Bundle bundle) {
        super.b0(bundle);
        if (bundle == null) {
            bundle = o();
        }
        this.c0 = bundle.getInt("THEME_RES_ID_KEY");
        jy0.a(bundle.getParcelable("DATE_SELECTOR_KEY"));
        this.d0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.appcompat.view.menu.av
    public View f0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.cloneInContext(new ContextThemeWrapper(q(), this.c0));
        new a();
        throw null;
    }

    @Override // androidx.appcompat.view.menu.av
    public void r0(Bundle bundle) {
        super.r0(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.c0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d0);
    }
}

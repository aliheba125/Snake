package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.appcompat.view.menu.aj;
import androidx.appcompat.view.menu.j9;
import androidx.appcompat.view.menu.k9;
import androidx.appcompat.view.menu.q41;
import androidx.appcompat.view.menu.td0;
import androidx.appcompat.view.menu.vm0;
import androidx.appcompat.view.menu.yi;
import androidx.appcompat.view.menu.zi;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class e extends BaseAdapter {
    public static final int e = q41.i().getMaximum(4);
    public static final int f = (q41.i().getMaximum(5) + q41.i().getMaximum(7)) - 1;
    public final td0 a;
    public Collection b;
    public k9 c;
    public final a d;

    public e(td0 td0Var, yi yiVar, a aVar, aj ajVar) {
        this.a = td0Var;
        this.d = aVar;
        this.b = yiVar.h();
    }

    public int a(int i) {
        return b() + (i - 1);
    }

    public int b() {
        return this.a.k(this.d.j());
    }

    public final String c(Context context, long j) {
        return zi.a(context, j, j(j), i(j), g(j));
    }

    @Override // android.widget.Adapter
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < b() || i > k()) {
            return null;
        }
        return Long.valueOf(this.a.l(l(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
    @Override // android.widget.Adapter
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextView getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        Long item;
        f(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(vm0.j, viewGroup, false);
        }
        int b = i - b();
        if (b >= 0) {
            td0 td0Var = this.a;
            if (b < td0Var.q) {
                i2 = b + 1;
                textView.setTag(td0Var);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i2)));
                textView.setVisibility(0);
                textView.setEnabled(true);
                item = getItem(i);
                if (item != null) {
                    return textView;
                }
                m(textView, item.longValue(), i2);
                return textView;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        i2 = -1;
        item = getItem(i);
        if (item != null) {
        }
    }

    public final void f(Context context) {
        if (this.c == null) {
            this.c = new k9(context);
        }
    }

    public boolean g(long j) {
        throw null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.a.p;
    }

    public final boolean h(long j) {
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public boolean i(long j) {
        throw null;
    }

    public final boolean j(long j) {
        return q41.g().getTimeInMillis() == j;
    }

    public int k() {
        return (b() + this.a.q) - 1;
    }

    public int l(int i) {
        return (i - b()) + 1;
    }

    public final void m(TextView textView, long j, int i) {
        j9 j9Var;
        if (textView == null) {
            return;
        }
        textView.setContentDescription(c(textView.getContext(), j));
        if (this.d.f().g(j)) {
            textView.setEnabled(true);
            boolean h = h(j);
            textView.setSelected(h);
            j9Var = h ? this.c.b : j(j) ? this.c.c : this.c.a;
        } else {
            textView.setEnabled(false);
            j9Var = this.c.g;
        }
        j9Var.b(textView);
    }

    public final void n(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (td0.i(j).equals(this.a)) {
            int m = this.a.m(j);
            m((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(m) - materialCalendarGridView.getFirstVisiblePosition()), j, m);
        }
    }

    public void o(MaterialCalendarGridView materialCalendarGridView) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            n(materialCalendarGridView, ((Long) it.next()).longValue());
        }
    }

    public boolean p(int i) {
        return i >= b() && i <= k();
    }
}

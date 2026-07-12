package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.wc0;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class lc0 extends BaseAdapter {
    public mc0 a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public lc0(mc0 mc0Var, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = mc0Var;
        this.f = i;
        a();
    }

    public void a() {
        qc0 t = this.a.t();
        if (t != null) {
            ArrayList v = this.a.v();
            int size = v.size();
            for (int i = 0; i < size; i++) {
                if (((qc0) v.get(i)) == t) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    public mc0 b() {
        return this.a;
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public qc0 getItem(int i) {
        ArrayList v = this.d ? this.a.v() : this.a.A();
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (qc0) v.get(i);
    }

    public void d(boolean z) {
        this.c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b < 0 ? (this.d ? this.a.v() : this.a.A()).size() : r0.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.a.C() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        wc0.a aVar = (wc0.a) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.d(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}

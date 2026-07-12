package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.appcompat.view.menu.b0;
import androidx.appcompat.view.menu.en0;
import androidx.appcompat.view.menu.f01;
import androidx.appcompat.view.menu.fb0;
import androidx.appcompat.view.menu.gh;
import androidx.appcompat.view.menu.ln0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.m61;
import androidx.appcompat.view.menu.p0;
import androidx.appcompat.view.menu.sb0;
import androidx.appcompat.view.menu.st0;
import androidx.appcompat.view.menu.zl0;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    public static final int k = en0.i;
    public final List a;
    public final e b;
    public final LinkedHashSet c;
    public final Comparator d;
    public Integer[] e;
    public boolean f;
    public boolean g;
    public boolean h;
    public final int i;
    public Set j;

    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    public class b extends b0 {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.b0
        public void g(View view, p0 p0Var) {
            super.g(view, p0Var);
            p0Var.f0(p0.f.a(0, 1, MaterialButtonToggleGroup.this.i(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    public static class c {
        public static final gh e = new androidx.appcompat.view.menu.e(0.0f);
        public gh a;
        public gh b;
        public gh c;
        public gh d;

        public c(gh ghVar, gh ghVar2, gh ghVar3, gh ghVar4) {
            this.a = ghVar;
            this.b = ghVar3;
            this.c = ghVar4;
            this.d = ghVar2;
        }

        public static c a(c cVar) {
            gh ghVar = e;
            return new c(ghVar, cVar.d, ghVar, cVar.c);
        }

        public static c b(c cVar, View view) {
            return m61.g(view) ? c(cVar) : d(cVar);
        }

        public static c c(c cVar) {
            gh ghVar = cVar.a;
            gh ghVar2 = cVar.d;
            gh ghVar3 = e;
            return new c(ghVar, ghVar2, ghVar3, ghVar3);
        }

        public static c d(c cVar) {
            gh ghVar = e;
            return new c(ghVar, ghVar, cVar.b, cVar.c);
        }

        public static c e(c cVar, View view) {
            return m61.g(view) ? d(cVar) : c(cVar);
        }

        public static c f(c cVar) {
            gh ghVar = cVar.a;
            gh ghVar2 = e;
            return new c(ghVar, ghVar2, cVar.b, ghVar2);
        }
    }

    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    public class e implements MaterialButton.a {
        public e() {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        public /* synthetic */ e(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, zl0.o);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (k(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (k(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && k(i2)) {
                i++;
            }
        }
        return i;
    }

    public static void p(st0.b bVar, c cVar) {
        if (cVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.B(cVar.a).t(cVar.d).F(cVar.b).x(cVar.c);
        }
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(m51.h());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            e(materialButton.getId(), materialButton.isChecked());
            st0 shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.a.add(new c(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
            materialButton.setEnabled(isEnabled());
            m51.k0(materialButton, new b());
        }
    }

    public void b(d dVar) {
        this.c.add(dVar);
    }

    public final void c() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton h = h(i);
            int min = Math.min(h.getStrokeWidth(), h(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams d2 = d(h);
            if (getOrientation() == 0) {
                fb0.c(d2, 0);
                fb0.d(d2, -min);
                d2.topMargin = 0;
            } else {
                d2.bottomMargin = 0;
                d2.topMargin = -min;
                fb0.d(d2, 0);
            }
            h.setLayoutParams(d2);
        }
        n(firstVisibleChildIndex);
    }

    public final LinearLayout.LayoutParams d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        r();
        super.dispatchDraw(canvas);
    }

    public final void e(int i, boolean z) {
        if (i == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("Button ID is not valid: ");
            sb.append(i);
            return;
        }
        HashSet hashSet = new HashSet(this.j);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        q(hashSet);
    }

    public void f() {
        q(new HashSet());
    }

    public final void g(int i, boolean z) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(this, i, z);
        }
    }

    public int getCheckedButtonId() {
        if (!this.g || this.j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.j.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = h(i).getId();
            if (this.j.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.e;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    public final MaterialButton h(int i) {
        return (MaterialButton) getChildAt(i);
    }

    public final int i(View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            if ((getChildAt(i2) instanceof MaterialButton) && k(i2)) {
                i++;
            }
        }
        return -1;
    }

    public final c j(int i, int i2, int i3) {
        c cVar = (c) this.a.get(i);
        if (i2 == i3) {
            return cVar;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? c.e(cVar, this) : c.f(cVar);
        }
        if (i == i3) {
            return z ? c.b(cVar, this) : c.a(cVar);
        }
        return null;
    }

    public final boolean k(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    public boolean l() {
        return this.g;
    }

    public void m(MaterialButton materialButton, boolean z) {
        if (this.f) {
            return;
        }
        e(materialButton.getId(), z);
    }

    public final void n(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) h(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            fb0.c(layoutParams, 0);
            fb0.d(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    public final void o(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f = false;
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.i;
        if (i != -1) {
            q(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        p0.C0(accessibilityNodeInfo).e0(p0.e.a(1, getVisibleButtonCount(), false, l() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        s();
        c();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.a.remove(indexOfChild);
        }
        s();
        c();
    }

    public final void q(Set set) {
        Set set2 = this.j;
        this.j = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = h(i).getId();
            o(id, set.contains(Integer.valueOf(id)));
            if (set2.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                g(id, set.contains(Integer.valueOf(id)));
            }
        }
        invalidate();
    }

    public final void r() {
        TreeMap treeMap = new TreeMap(this.d);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(h(i), Integer.valueOf(i));
        }
        this.e = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    public void s() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton h = h(i);
            if (h.getVisibility() != 8) {
                st0.b v = h.getShapeAppearanceModel().v();
                p(v, j(i, firstVisibleChildIndex, lastVisibleChildIndex));
                h.setShapeAppearanceModel(v.m());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            h(i).setEnabled(z);
        }
    }

    public void setSelectionRequired(boolean z) {
        this.h = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.g != z) {
            this.g = z;
            f();
        }
        t();
    }

    public final void t() {
        for (int i = 0; i < getChildCount(); i++) {
            h(i).setA11yClassName((this.g ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(sb0.c(context, attributeSet, i, r4), attributeSet, i);
        int i2 = k;
        this.a = new ArrayList();
        this.b = new e(this, null);
        this.c = new LinkedHashSet();
        this.d = new a();
        this.f = false;
        this.j = new HashSet();
        TypedArray h = f01.h(getContext(), attributeSet, ln0.o2, i, i2, new int[0]);
        setSingleSelection(h.getBoolean(ln0.s2, false));
        this.i = h.getResourceId(ln0.q2, -1);
        this.h = h.getBoolean(ln0.r2, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(h.getBoolean(ln0.p2, true));
        h.recycle();
        m51.u0(this, 1);
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}

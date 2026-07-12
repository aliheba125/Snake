package io.flutter.plugin.editing;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.view.menu.a80;
import androidx.appcompat.view.menu.bj0;
import androidx.appcompat.view.menu.ea0;
import androidx.appcompat.view.menu.mn;
import androidx.appcompat.view.menu.xz0;
import io.flutter.plugin.editing.b;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class c implements b.InterfaceC0070b {
    public final View a;
    public final InputMethodManager b;
    public final AutofillManager c;
    public final xz0 d;
    public C0071c e = new C0071c(C0071c.a.NO_TARGET, 0);
    public xz0.b f;
    public SparseArray g;
    public io.flutter.plugin.editing.b h;
    public boolean i;
    public InputConnection j;
    public bj0 k;
    public Rect l;
    public ImeSyncDeferringInsetsCallback m;
    public xz0.e n;
    public boolean o;

    public class a implements xz0.f {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void a() {
            c cVar = c.this;
            cVar.D(cVar.a);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void b() {
            c.this.k();
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void c(int i, xz0.b bVar) {
            c.this.B(i, bVar);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void d(String str, Bundle bundle) {
            c.this.z(str, bundle);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void e(int i, boolean z) {
            c.this.A(i, z);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void f(double d, double d2, double[] dArr) {
            c.this.y(d, d2, dArr);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void g(xz0.e eVar) {
            c cVar = c.this;
            cVar.C(cVar.a, eVar);
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void h() {
            c.this.v();
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void i(boolean z) {
            if (c.this.c == null) {
                return;
            }
            if (z) {
                c.this.c.commit();
            } else {
                c.this.c.cancel();
            }
        }

        @Override // androidx.appcompat.view.menu.xz0.f
        public void j() {
            if (c.this.e.a == C0071c.a.PHYSICAL_DISPLAY_PLATFORM_VIEW) {
                c.this.w();
            } else {
                c cVar = c.this;
                cVar.q(cVar.a);
            }
        }
    }

    public class b implements d {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ double[] b;
        public final /* synthetic */ double[] c;

        public b(boolean z, double[] dArr, double[] dArr2) {
            this.a = z;
            this.b = dArr;
            this.c = dArr2;
        }

        @Override // io.flutter.plugin.editing.c.d
        public void a(double d, double d2) {
            double d3 = 1.0d;
            if (!this.a) {
                double[] dArr = this.b;
                d3 = 1.0d / (((dArr[3] * d) + (dArr[7] * d2)) + dArr[15]);
            }
            double[] dArr2 = this.b;
            double d4 = ((dArr2[0] * d) + (dArr2[4] * d2) + dArr2[12]) * d3;
            double d5 = ((dArr2[1] * d) + (dArr2[5] * d2) + dArr2[13]) * d3;
            double[] dArr3 = this.c;
            if (d4 < dArr3[0]) {
                dArr3[0] = d4;
            } else if (d4 > dArr3[1]) {
                dArr3[1] = d4;
            }
            if (d5 < dArr3[2]) {
                dArr3[2] = d5;
            } else if (d5 > dArr3[3]) {
                dArr3[3] = d5;
            }
        }
    }

    /* renamed from: io.flutter.plugin.editing.c$c, reason: collision with other inner class name */
    public static class C0071c {
        public a a;
        public int b;

        /* renamed from: io.flutter.plugin.editing.c$c$a */
        public enum a {
            NO_TARGET,
            FRAMEWORK_CLIENT,
            VIRTUAL_DISPLAY_PLATFORM_VIEW,
            PHYSICAL_DISPLAY_PLATFORM_VIEW
        }

        public C0071c(a aVar, int i) {
            this.a = aVar;
            this.b = i;
        }
    }

    public interface d {
        void a(double d, double d2);
    }

    public c(View view, xz0 xz0Var, bj0 bj0Var) {
        this.a = view;
        this.h = new io.flutter.plugin.editing.b(null, view);
        this.b = (InputMethodManager) view.getContext().getSystemService("input_method");
        int i = Build.VERSION.SDK_INT;
        this.c = (AutofillManager) view.getContext().getSystemService(AutofillManager.class);
        if (i >= 30) {
            ImeSyncDeferringInsetsCallback imeSyncDeferringInsetsCallback = new ImeSyncDeferringInsetsCallback(view);
            this.m = imeSyncDeferringInsetsCallback;
            imeSyncDeferringInsetsCallback.install();
        }
        this.d = xz0Var;
        xz0Var.n(new a());
        xz0Var.k();
        this.k = bj0Var;
        bj0Var.v(this);
    }

    public static boolean l(xz0.e eVar, xz0.e eVar2) {
        int i = eVar.e - eVar.d;
        if (i != eVar2.e - eVar2.d) {
            return true;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (eVar.a.charAt(eVar.d + i2) != eVar2.a.charAt(eVar2.d + i2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int r(xz0.c cVar, boolean z, boolean z2, boolean z3, boolean z4, xz0.d dVar) {
        int i;
        xz0.g gVar = cVar.a;
        if (gVar == xz0.g.DATETIME) {
            return 4;
        }
        if (gVar == xz0.g.NUMBER) {
            int i2 = cVar.b ? 4098 : 2;
            return cVar.c ? i2 | 8192 : i2;
        }
        if (gVar == xz0.g.PHONE) {
            return 3;
        }
        if (gVar == xz0.g.NONE) {
            return 0;
        }
        int i3 = gVar == xz0.g.MULTILINE ? 131073 : gVar == xz0.g.EMAIL_ADDRESS ? 33 : gVar == xz0.g.URL ? 17 : gVar == xz0.g.VISIBLE_PASSWORD ? 145 : gVar == xz0.g.NAME ? 97 : gVar == xz0.g.POSTAL_ADDRESS ? 113 : 1;
        if (!z) {
            if (z2) {
                i3 |= 32768;
            }
            i = z3 ? 524416 : 524432;
            return dVar != xz0.d.CHARACTERS ? i3 | 4096 : dVar == xz0.d.WORDS ? i3 | 8192 : dVar == xz0.d.SENTENCES ? i3 | 16384 : i3;
        }
        i3 |= i;
        if (dVar != xz0.d.CHARACTERS) {
        }
    }

    public final void A(int i, boolean z) {
        if (!z) {
            this.e = new C0071c(C0071c.a.PHYSICAL_DISPLAY_PLATFORM_VIEW, i);
            this.j = null;
        } else {
            this.a.requestFocus();
            this.e = new C0071c(C0071c.a.VIRTUAL_DISPLAY_PLATFORM_VIEW, i);
            this.b.restartInput(this.a);
            this.i = false;
        }
    }

    public void B(int i, xz0.b bVar) {
        w();
        this.f = bVar;
        this.e = new C0071c(C0071c.a.FRAMEWORK_CLIENT, i);
        this.h.l(this);
        xz0.b.a aVar = bVar.j;
        this.h = new io.flutter.plugin.editing.b(aVar != null ? aVar.c : null, this.a);
        F(bVar);
        this.i = true;
        E();
        this.l = null;
        this.h.a(this);
    }

    public void C(View view, xz0.e eVar) {
        xz0.e eVar2;
        if (!this.i && (eVar2 = this.n) != null && eVar2.b()) {
            boolean l = l(this.n, eVar);
            this.i = l;
            if (l) {
                ea0.e("TextInputPlugin", "Composing region changed by the framework. Restarting the input method.");
            }
        }
        this.n = eVar;
        this.h.n(eVar);
        if (this.i) {
            this.b.restartInput(view);
            this.i = false;
        }
    }

    public void D(View view) {
        xz0.c cVar;
        xz0.b bVar = this.f;
        if (bVar != null && (cVar = bVar.g) != null && cVar.a == xz0.g.NONE) {
            q(view);
        } else {
            view.requestFocus();
            this.b.showSoftInput(view, 0);
        }
    }

    public void E() {
        if (this.e.a == C0071c.a.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            this.o = false;
        }
    }

    public final void F(xz0.b bVar) {
        if (bVar == null || bVar.j == null) {
            this.g = null;
            return;
        }
        xz0.b[] bVarArr = bVar.l;
        SparseArray sparseArray = new SparseArray();
        this.g = sparseArray;
        if (bVarArr == null) {
            sparseArray.put(bVar.j.a.hashCode(), bVar);
            return;
        }
        for (xz0.b bVar2 : bVarArr) {
            xz0.b.a aVar = bVar2.j;
            if (aVar != null) {
                this.g.put(aVar.a.hashCode(), bVar2);
                this.c.notifyValueChanged(this.a, aVar.a.hashCode(), AutofillValue.forText(aVar.c.a));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
    
        if (r7 == r1.e) goto L22;
     */
    @Override // io.flutter.plugin.editing.b.InterfaceC0070b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z, boolean z2, boolean z3) {
        if (z) {
            u(this.h.toString());
        }
        int i = this.h.i();
        int h = this.h.h();
        int g = this.h.g();
        int f = this.h.f();
        ArrayList e = this.h.e();
        if (this.n != null) {
            if (this.h.toString().equals(this.n.a)) {
                xz0.e eVar = this.n;
                if (i == eVar.b) {
                    if (h == eVar.c) {
                        if (g == eVar.d) {
                        }
                    }
                }
            }
            ea0.f("TextInputPlugin", "send EditingState to flutter: " + this.h.toString());
            if (this.f.e) {
                this.d.q(this.e.b, e);
                this.h.c();
            } else {
                this.d.p(this.e.b, this.h.toString(), i, h, g, f);
            }
            this.n = new xz0.e(this.h.toString(), i, h, g, f);
            return;
        }
        this.h.c();
    }

    public void j(SparseArray sparseArray) {
        xz0.b.a aVar;
        xz0.b.a aVar2;
        xz0.b bVar = this.f;
        if (bVar == null || this.g == null || (aVar = bVar.j) == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < sparseArray.size(); i++) {
            xz0.b bVar2 = (xz0.b) this.g.get(sparseArray.keyAt(i));
            if (bVar2 != null && (aVar2 = bVar2.j) != null) {
                String charSequence = ((AutofillValue) sparseArray.valueAt(i)).getTextValue().toString();
                xz0.e eVar = new xz0.e(charSequence, charSequence.length(), charSequence.length(), -1, -1);
                if (aVar2.a.equals(aVar.a)) {
                    this.h.n(eVar);
                } else {
                    hashMap.put(aVar2.a, eVar);
                }
            }
        }
        this.d.r(this.e.b, hashMap);
    }

    public void k() {
        if (this.e.a == C0071c.a.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            return;
        }
        this.h.l(this);
        w();
        this.f = null;
        F(null);
        this.e = new C0071c(C0071c.a.NO_TARGET, 0);
        E();
        this.l = null;
        this.b.restartInput(this.a);
    }

    public InputConnection m(View view, a80 a80Var, EditorInfo editorInfo) {
        C0071c c0071c = this.e;
        C0071c.a aVar = c0071c.a;
        if (aVar == C0071c.a.NO_TARGET) {
            this.j = null;
            return null;
        }
        if (aVar == C0071c.a.PHYSICAL_DISPLAY_PLATFORM_VIEW) {
            return null;
        }
        if (aVar == C0071c.a.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            if (this.o) {
                return this.j;
            }
            InputConnection onCreateInputConnection = this.k.c(c0071c.b).onCreateInputConnection(editorInfo);
            this.j = onCreateInputConnection;
            return onCreateInputConnection;
        }
        xz0.b bVar = this.f;
        int r = r(bVar.g, bVar.a, bVar.b, bVar.c, bVar.d, bVar.f);
        editorInfo.inputType = r;
        editorInfo.imeOptions = 33554432;
        xz0.b bVar2 = this.f;
        if (!bVar2.d) {
            editorInfo.imeOptions = 33554432 | 16777216;
        }
        Integer num = bVar2.h;
        int intValue = num == null ? (r & 131072) != 0 ? 1 : 6 : num.intValue();
        xz0.b bVar3 = this.f;
        String str = bVar3.i;
        if (str != null) {
            editorInfo.actionLabel = str;
            editorInfo.actionId = intValue;
        }
        editorInfo.imeOptions = intValue | editorInfo.imeOptions;
        String[] strArr = bVar3.k;
        if (strArr != null) {
            mn.c(editorInfo, strArr);
        }
        io.flutter.plugin.editing.a aVar2 = new io.flutter.plugin.editing.a(view, this.e.b, this.d, a80Var, this.h, editorInfo);
        editorInfo.initialSelStart = this.h.i();
        editorInfo.initialSelEnd = this.h.h();
        this.j = aVar2;
        return aVar2;
    }

    public void n() {
        this.k.G();
        this.d.n(null);
        w();
        this.h.l(this);
        ImeSyncDeferringInsetsCallback imeSyncDeferringInsetsCallback = this.m;
        if (imeSyncDeferringInsetsCallback != null) {
            imeSyncDeferringInsetsCallback.remove();
        }
    }

    public InputMethodManager o() {
        return this.b;
    }

    public boolean p(KeyEvent keyEvent) {
        InputConnection inputConnection;
        if (!o().isAcceptingText() || (inputConnection = this.j) == null) {
            return false;
        }
        return inputConnection instanceof io.flutter.plugin.editing.a ? ((io.flutter.plugin.editing.a) inputConnection).f(keyEvent) : inputConnection.sendKeyEvent(keyEvent);
    }

    public final void q(View view) {
        w();
        this.b.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
    }

    public void s() {
        if (this.e.a == C0071c.a.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            this.o = true;
        }
    }

    public final boolean t() {
        return this.g != null;
    }

    public final void u(String str) {
        if (this.c == null || !t()) {
            return;
        }
        this.c.notifyValueChanged(this.a, this.f.j.a.hashCode(), AutofillValue.forText(str));
    }

    public final void v() {
        if (this.c == null || !t()) {
            return;
        }
        String str = this.f.j.a;
        int[] iArr = new int[2];
        this.a.getLocationOnScreen(iArr);
        Rect rect = new Rect(this.l);
        rect.offset(iArr[0], iArr[1]);
        this.c.notifyViewEntered(this.a, str.hashCode(), rect);
    }

    public final void w() {
        xz0.b bVar;
        if (this.c == null || (bVar = this.f) == null || bVar.j == null || !t()) {
            return;
        }
        this.c.notifyViewExited(this.a, this.f.j.a.hashCode());
    }

    public void x(ViewStructure viewStructure, int i) {
        Rect rect;
        if (t()) {
            String str = this.f.j.a;
            AutofillId autofillId = viewStructure.getAutofillId();
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                int keyAt = this.g.keyAt(i2);
                xz0.b.a aVar = ((xz0.b) this.g.valueAt(i2)).j;
                if (aVar != null) {
                    viewStructure.addChildCount(1);
                    ViewStructure newChild = viewStructure.newChild(i2);
                    newChild.setAutofillId(autofillId, keyAt);
                    String[] strArr = aVar.b;
                    if (strArr.length > 0) {
                        newChild.setAutofillHints(strArr);
                    }
                    newChild.setAutofillType(1);
                    newChild.setVisibility(0);
                    String str2 = aVar.d;
                    if (str2 != null) {
                        newChild.setHint(str2);
                    }
                    if (str.hashCode() != keyAt || (rect = this.l) == null) {
                        newChild.setDimens(0, 0, 0, 0, 1, 1);
                        newChild.setAutofillValue(AutofillValue.forText(aVar.c.a));
                    } else {
                        newChild.setDimens(rect.left, rect.top, 0, 0, rect.width(), this.l.height());
                        newChild.setAutofillValue(AutofillValue.forText(this.h));
                    }
                }
            }
        }
    }

    public final void y(double d2, double d3, double[] dArr) {
        double[] dArr2 = new double[4];
        boolean z = dArr[3] == 0.0d && dArr[7] == 0.0d && dArr[15] == 1.0d;
        double d4 = dArr[12];
        double d5 = dArr[15];
        double d6 = d4 / d5;
        dArr2[1] = d6;
        dArr2[0] = d6;
        double d7 = dArr[13] / d5;
        dArr2[3] = d7;
        dArr2[2] = d7;
        b bVar = new b(z, dArr, dArr2);
        bVar.a(d2, 0.0d);
        bVar.a(d2, d3);
        bVar.a(0.0d, d3);
        Float valueOf = Float.valueOf(this.a.getContext().getResources().getDisplayMetrics().density);
        this.l = new Rect((int) (dArr2[0] * valueOf.floatValue()), (int) (dArr2[2] * valueOf.floatValue()), (int) Math.ceil(dArr2[1] * valueOf.floatValue()), (int) Math.ceil(dArr2[3] * valueOf.floatValue()));
    }

    public void z(String str, Bundle bundle) {
        this.b.sendAppPrivateCommand(this.a, str, bundle);
    }
}

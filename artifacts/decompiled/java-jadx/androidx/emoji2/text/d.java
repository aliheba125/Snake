package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.view.menu.cw0;
import androidx.appcompat.view.menu.v31;
import androidx.appcompat.view.menu.vn;
import androidx.appcompat.view.menu.z21;
import androidx.emoji2.text.c;
import androidx.emoji2.text.f;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class d {
    public final c.j a;
    public final f b;
    public c.e c;
    public final boolean d;
    public final int[] e;

    public static final class a {
        public static int a(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    i--;
                    if (i < 0) {
                        return z ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                    } else {
                        if (Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        z = true;
                    }
                }
                return i;
            }
        }

        public static int b(CharSequence charSequence, int i, int i2) {
            int length = charSequence.length();
            if (i < 0 || length < i || i2 < 0) {
                return -1;
            }
            while (true) {
                boolean z = false;
                while (i2 != 0) {
                    if (i >= length) {
                        if (z) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i);
                    if (z) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i2--;
                        i++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i2--;
                        i++;
                    } else {
                        if (Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i++;
                        z = true;
                    }
                }
                return i;
            }
        }
    }

    public static class b implements c {
        public v31 a;
        public final c.j b;

        public b(v31 v31Var, c.j jVar) {
            this.a = v31Var;
            this.b = jVar;
        }

        @Override // androidx.emoji2.text.d.c
        public boolean b(CharSequence charSequence, int i, int i2, z21 z21Var) {
            if (z21Var.k()) {
                return true;
            }
            if (this.a == null) {
                this.a = new v31(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            this.a.setSpan(this.b.a(z21Var), i, i2, 33);
            return true;
        }

        @Override // androidx.emoji2.text.d.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public v31 a() {
            return this.a;
        }
    }

    public interface c {
        Object a();

        boolean b(CharSequence charSequence, int i, int i2, z21 z21Var);
    }

    /* renamed from: androidx.emoji2.text.d$d, reason: collision with other inner class name */
    public static class C0042d implements c {
        public final String a;

        public C0042d(String str) {
            this.a = str;
        }

        @Override // androidx.emoji2.text.d.c
        public boolean b(CharSequence charSequence, int i, int i2, z21 z21Var) {
            if (!TextUtils.equals(charSequence.subSequence(i, i2), this.a)) {
                return true;
            }
            z21Var.l(true);
            return false;
        }

        @Override // androidx.emoji2.text.d.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C0042d a() {
            return this;
        }
    }

    public static final class e {
        public int a = 1;
        public final f.a b;
        public f.a c;
        public f.a d;
        public int e;
        public int f;
        public final boolean g;
        public final int[] h;

        public e(f.a aVar, boolean z, int[] iArr) {
            this.b = aVar;
            this.c = aVar;
            this.g = z;
            this.h = iArr;
        }

        public static boolean d(int i) {
            return i == 65039;
        }

        public static boolean f(int i) {
            return i == 65038;
        }

        public int a(int i) {
            f.a a = this.c.a(i);
            int i2 = 2;
            if (this.a != 2) {
                if (a == null) {
                    i2 = g();
                } else {
                    this.a = 2;
                    this.c = a;
                    this.f = 1;
                }
            } else if (a != null) {
                this.c = a;
                this.f++;
            } else if (f(i)) {
                i2 = g();
            } else if (!d(i)) {
                if (this.c.b() != null) {
                    i2 = 3;
                    if (this.f != 1) {
                        this.d = this.c;
                        g();
                    } else if (h()) {
                        this.d = this.c;
                        g();
                    } else {
                        i2 = g();
                    }
                } else {
                    i2 = g();
                }
            }
            this.e = i;
            return i2;
        }

        public z21 b() {
            return this.c.b();
        }

        public z21 c() {
            return this.d.b();
        }

        public boolean e() {
            return this.a == 2 && this.c.b() != null && (this.f > 1 || h());
        }

        public final int g() {
            this.a = 1;
            this.c = this.b;
            this.f = 0;
            return 1;
        }

        public final boolean h() {
            if (this.c.b().j() || d(this.e)) {
                return true;
            }
            if (this.g) {
                if (this.h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.h, this.c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public d(f fVar, c.j jVar, c.e eVar, boolean z, int[] iArr, Set set) {
        this.a = jVar;
        this.b = fVar;
        this.c = eVar;
        this.d = z;
        this.e = iArr;
        g(set);
    }

    public static boolean a(Editable editable, KeyEvent keyEvent, boolean z) {
        vn[] vnVarArr;
        if (f(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!e(selectionStart, selectionEnd) && (vnVarArr = (vn[]) editable.getSpans(selectionStart, selectionEnd, vn.class)) != null && vnVarArr.length > 0) {
            for (vn vnVar : vnVarArr) {
                int spanStart = editable.getSpanStart(vnVar);
                int spanEnd = editable.getSpanEnd(vnVar);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(InputConnection inputConnection, Editable editable, int i, int i2, boolean z) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i >= 0 && i2 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (e(selectionStart, selectionEnd)) {
                return false;
            }
            if (z) {
                max = a.a(editable, selectionStart, Math.max(i, 0));
                min = a.b(editable, selectionEnd, Math.max(i2, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i, 0);
                min = Math.min(selectionEnd + i2, editable.length());
            }
            vn[] vnVarArr = (vn[]) editable.getSpans(max, min, vn.class);
            if (vnVarArr != null && vnVarArr.length > 0) {
                for (vn vnVar : vnVarArr) {
                    int spanStart = editable.getSpanStart(vnVar);
                    int spanEnd = editable.getSpanEnd(vnVar);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    public static boolean c(Editable editable, int i, KeyEvent keyEvent) {
        boolean a2;
        if (i != 67) {
            if (i == 112) {
                a2 = a(editable, keyEvent, true);
            }
            return false;
        }
        a2 = a(editable, keyEvent, false);
        if (a2) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        return false;
    }

    public static boolean e(int i, int i2) {
        return i == -1 || i2 == -1 || i != i2;
    }

    public static boolean f(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public final boolean d(CharSequence charSequence, int i, int i2, z21 z21Var) {
        if (z21Var.d() == 0) {
            z21Var.m(this.c.a(charSequence, i, i2, z21Var.h()));
        }
        return z21Var.d() == 2;
    }

    public final void g(Set set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            i(str, 0, str.length(), 1, true, new C0042d(str));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:51:0x000e, B:54:0x0013, B:56:0x0017, B:58:0x0024, B:9:0x003a, B:11:0x0042, B:13:0x0045, B:15:0x0049, B:17:0x0055, B:19:0x0058, B:24:0x0066, B:30:0x0074, B:31:0x0080, B:33:0x0094, B:6:0x002f), top: B:50:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094 A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #0 {all -> 0x002a, blocks: (B:51:0x000e, B:54:0x0013, B:56:0x0017, B:58:0x0024, B:9:0x003a, B:11:0x0042, B:13:0x0045, B:15:0x0049, B:17:0x0055, B:19:0x0058, B:24:0x0066, B:30:0x0074, B:31:0x0080, B:33:0x0094, B:6:0x002f), top: B:50:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence h(CharSequence charSequence, int i, int i2, int i3, boolean z) {
        v31 v31Var;
        int i4;
        v31 v31Var2;
        vn[] vnVarArr;
        boolean z2 = charSequence instanceof cw0;
        if (z2) {
            ((cw0) charSequence).a();
        }
        if (!z2) {
            try {
                if (!(charSequence instanceof Spannable)) {
                    v31Var = (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i + (-1), i2 + 1, vn.class) > i2) ? null : new v31(charSequence);
                    if (v31Var != null && (vnVarArr = (vn[]) v31Var.getSpans(i, i2, vn.class)) != null && vnVarArr.length > 0) {
                        for (vn vnVar : vnVarArr) {
                            int spanStart = v31Var.getSpanStart(vnVar);
                            int spanEnd = v31Var.getSpanEnd(vnVar);
                            if (spanStart != i2) {
                                v31Var.removeSpan(vnVar);
                            }
                            i = Math.min(spanStart, i);
                            i2 = Math.max(spanEnd, i2);
                        }
                    }
                    i4 = i2;
                    if (i != i4 && i < charSequence.length()) {
                        if (i3 != Integer.MAX_VALUE && v31Var != null) {
                            i3 -= ((vn[]) v31Var.getSpans(0, v31Var.length(), vn.class)).length;
                        }
                        v31Var2 = (v31) i(charSequence, i, i4, i3, z, new b(v31Var, this.a));
                        if (v31Var2 != null) {
                            if (z2) {
                                ((cw0) charSequence).d();
                            }
                            return charSequence;
                        }
                        Spannable b2 = v31Var2.b();
                        if (z2) {
                            ((cw0) charSequence).d();
                        }
                        return b2;
                    }
                    return charSequence;
                }
            } finally {
                if (z2) {
                    ((cw0) charSequence).d();
                }
            }
        }
        v31Var = new v31((Spannable) charSequence);
        if (v31Var != null) {
            while (r6 < r5) {
            }
        }
        i4 = i2;
        if (i != i4) {
            if (i3 != Integer.MAX_VALUE) {
                i3 -= ((vn[]) v31Var.getSpans(0, v31Var.length(), vn.class)).length;
            }
            v31Var2 = (v31) i(charSequence, i, i4, i3, z, new b(v31Var, this.a));
            if (v31Var2 != null) {
            }
        }
        return charSequence;
    }

    public final Object i(CharSequence charSequence, int i, int i2, int i3, boolean z, c cVar) {
        int i4;
        e eVar = new e(this.b.f(), this.d, this.e);
        int i5 = 0;
        boolean z2 = true;
        int codePointAt = Character.codePointAt(charSequence, i);
        loop0: while (true) {
            i4 = i;
            while (i < i2 && i5 < i3 && z2) {
                int a2 = eVar.a(codePointAt);
                if (a2 == 1) {
                    i4 += Character.charCount(Character.codePointAt(charSequence, i4));
                    if (i4 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i4);
                    }
                    i = i4;
                } else if (a2 == 2) {
                    i += Character.charCount(codePointAt);
                    if (i < i2) {
                        codePointAt = Character.codePointAt(charSequence, i);
                    }
                } else if (a2 == 3) {
                    if (z || !d(charSequence, i4, i, eVar.c())) {
                        z2 = cVar.b(charSequence, i4, i, eVar.c());
                        i5++;
                    }
                }
            }
        }
        if (eVar.e() && i5 < i3 && z2 && (z || !d(charSequence, i4, i, eVar.b()))) {
            cVar.b(charSequence, i4, i, eVar.b());
        }
        return cVar.a();
    }
}

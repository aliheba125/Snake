package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class mc0 implements hy0 {
    public static final int[] A = {1, 4, 5, 3, 2, 0};
    public final Context a;
    public final Resources b;
    public boolean c;
    public boolean d;
    public a e;
    public ContextMenu.ContextMenuInfo m;
    public CharSequence n;
    public Drawable o;
    public View p;
    public qc0 x;
    public boolean z;
    public int l = 0;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean t = false;
    public boolean u = false;
    public ArrayList v = new ArrayList();
    public CopyOnWriteArrayList w = new CopyOnWriteArrayList();
    public boolean y = false;
    public ArrayList f = new ArrayList();
    public ArrayList g = new ArrayList();
    public boolean h = true;
    public ArrayList i = new ArrayList();
    public ArrayList j = new ArrayList();
    public boolean k = true;

    public interface a {
        boolean a(mc0 mc0Var, MenuItem menuItem);

        void b(mc0 mc0Var);
    }

    public interface b {
        boolean a(qc0 qc0Var);
    }

    public mc0(Context context) {
        this.a = context;
        this.b = context.getResources();
        U(true);
    }

    public static int m(ArrayList arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((qc0) arrayList.get(size)).d() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    public static int x(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = A;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    public ArrayList A() {
        if (!this.h) {
            return this.g;
        }
        this.g.clear();
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            qc0 qc0Var = (qc0) this.f.get(i);
            if (qc0Var.isVisible()) {
                this.g.add(qc0Var);
            }
        }
        this.h = false;
        this.k = true;
        return this.g;
    }

    public boolean B() {
        return !this.q;
    }

    public boolean C() {
        return this.y;
    }

    public boolean D() {
        return this.c;
    }

    public boolean E() {
        return this.d;
    }

    public void F(qc0 qc0Var) {
        this.k = true;
        H(true);
    }

    public void G(qc0 qc0Var) {
        this.h = true;
        H(true);
    }

    public void H(boolean z) {
        if (this.q) {
            this.r = true;
            if (z) {
                this.s = true;
                return;
            }
            return;
        }
        if (z) {
            this.h = true;
            this.k = true;
        }
        h(z);
    }

    public boolean I(MenuItem menuItem, int i) {
        return J(menuItem, null, i);
    }

    public boolean J(MenuItem menuItem, uc0 uc0Var, int i) {
        qc0 qc0Var = (qc0) menuItem;
        if (qc0Var == null || !qc0Var.isEnabled()) {
            return false;
        }
        boolean j = qc0Var.j();
        qc0Var.g();
        if (qc0Var.i()) {
            j |= qc0Var.expandActionView();
            if (j) {
                d(true);
            }
        } else if (qc0Var.hasSubMenu()) {
            if ((i & 4) == 0) {
                d(false);
            }
            if (!qc0Var.hasSubMenu()) {
                qc0Var.w(new ay0(s(), this, qc0Var));
            }
            j |= i((ay0) qc0Var.getSubMenu(), uc0Var);
            if (!j) {
                d(true);
            }
        } else if ((i & 1) == 0) {
            d(true);
        }
        return j;
    }

    public final void K(int i, boolean z) {
        if (i < 0 || i >= this.f.size()) {
            return;
        }
        this.f.remove(i);
        if (z) {
            H(true);
        }
    }

    public void L(uc0 uc0Var) {
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            uc0 uc0Var2 = (uc0) weakReference.get();
            if (uc0Var2 == null || uc0Var2 == uc0Var) {
                this.w.remove(weakReference);
            }
        }
    }

    public void M(a aVar) {
        this.e = aVar;
    }

    public void N(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f.size();
        W();
        for (int i = 0; i < size; i++) {
            qc0 qc0Var = (qc0) this.f.get(i);
            if (qc0Var.getGroupId() == groupId && qc0Var.l() && qc0Var.isCheckable()) {
                qc0Var.r(qc0Var == menuItem);
            }
        }
        V();
    }

    public mc0 O(int i) {
        Q(0, null, i, null, null);
        return this;
    }

    public mc0 P(Drawable drawable) {
        Q(0, null, 0, drawable, null);
        return this;
    }

    public final void Q(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources y = y();
        if (view != null) {
            this.p = view;
            this.n = null;
            this.o = null;
        } else {
            if (i > 0) {
                this.n = y.getText(i);
            } else if (charSequence != null) {
                this.n = charSequence;
            }
            if (i2 > 0) {
                this.o = lg.e(s(), i2);
            } else if (drawable != null) {
                this.o = drawable;
            }
            this.p = null;
        }
        H(false);
    }

    public mc0 R(int i) {
        Q(i, null, 0, null, null);
        return this;
    }

    public mc0 S(CharSequence charSequence) {
        Q(0, charSequence, 0, null, null);
        return this;
    }

    public mc0 T(View view) {
        Q(0, null, 0, null, view);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
    
        if (androidx.appcompat.view.menu.q51.j(android.view.ViewConfiguration.get(r2.a), r2.a) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void U(boolean z) {
        boolean z2;
        if (z) {
            z2 = true;
            if (this.b.getConfiguration().keyboard != 1) {
            }
        }
        z2 = false;
        this.d = z2;
    }

    public void V() {
        this.q = false;
        if (this.r) {
            this.r = false;
            H(this.s);
        }
    }

    public void W() {
        if (this.q) {
            return;
        }
        this.q = true;
        this.r = false;
        this.s = false;
    }

    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int x = x(i3);
        qc0 f = f(i, i2, i3, x, charSequence, this.l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.m;
        if (contextMenuInfo != null) {
            f.u(contextMenuInfo);
        }
        ArrayList arrayList = this.f;
        arrayList.add(m(arrayList, x), f);
        H(true);
        return f;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(uc0 uc0Var, Context context) {
        this.w.add(new WeakReference(uc0Var));
        uc0Var.c(context, this);
        this.k = true;
    }

    public void c() {
        a aVar = this.e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        qc0 qc0Var = this.x;
        if (qc0Var != null) {
            e(qc0Var);
        }
        this.f.clear();
        H(true);
    }

    public void clearHeader() {
        this.o = null;
        this.n = null;
        this.p = null;
        H(false);
    }

    @Override // android.view.Menu
    public void close() {
        d(true);
    }

    public final void d(boolean z) {
        if (this.u) {
            return;
        }
        this.u = true;
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            uc0 uc0Var = (uc0) weakReference.get();
            if (uc0Var == null) {
                this.w.remove(weakReference);
            } else {
                uc0Var.b(this, z);
            }
        }
        this.u = false;
    }

    public boolean e(qc0 qc0Var) {
        boolean z = false;
        if (!this.w.isEmpty() && this.x == qc0Var) {
            W();
            Iterator it = this.w.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                uc0 uc0Var = (uc0) weakReference.get();
                if (uc0Var == null) {
                    this.w.remove(weakReference);
                } else {
                    z = uc0Var.h(this, qc0Var);
                    if (z) {
                        break;
                    }
                }
            }
            V();
            if (z) {
                this.x = null;
            }
        }
        return z;
    }

    public final qc0 f(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new qc0(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            qc0 qc0Var = (qc0) this.f.get(i2);
            if (qc0Var.getItemId() == i) {
                return qc0Var;
            }
            if (qc0Var.hasSubMenu() && (findItem = qc0Var.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public boolean g(mc0 mc0Var, MenuItem menuItem) {
        a aVar = this.e;
        return aVar != null && aVar.a(mc0Var, menuItem);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return (MenuItem) this.f.get(i);
    }

    public final void h(boolean z) {
        if (this.w.isEmpty()) {
            return;
        }
        W();
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            uc0 uc0Var = (uc0) weakReference.get();
            if (uc0Var == null) {
                this.w.remove(weakReference);
            } else {
                uc0Var.f(z);
            }
        }
        V();
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (((qc0) this.f.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final boolean i(ay0 ay0Var, uc0 uc0Var) {
        if (this.w.isEmpty()) {
            return false;
        }
        boolean e = uc0Var != null ? uc0Var.e(ay0Var) : false;
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            uc0 uc0Var2 = (uc0) weakReference.get();
            if (uc0Var2 == null) {
                this.w.remove(weakReference);
            } else if (!e) {
                e = uc0Var2.e(ay0Var);
            }
        }
        return e;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return o(i, keyEvent) != null;
    }

    public boolean j(qc0 qc0Var) {
        boolean z = false;
        if (this.w.isEmpty()) {
            return false;
        }
        W();
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            uc0 uc0Var = (uc0) weakReference.get();
            if (uc0Var == null) {
                this.w.remove(weakReference);
            } else {
                z = uc0Var.j(this, qc0Var);
                if (z) {
                    break;
                }
            }
        }
        V();
        if (z) {
            this.x = qc0Var;
        }
        return z;
    }

    public int k(int i) {
        return l(i, 0);
    }

    public int l(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (((qc0) this.f.get(i2)).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public int n(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((qc0) this.f.get(i2)).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public qc0 o(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.v;
        arrayList.clear();
        p(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (qc0) arrayList.get(0);
        }
        boolean D = D();
        for (int i2 = 0; i2 < size; i2++) {
            qc0 qc0Var = (qc0) arrayList.get(i2);
            char alphabeticShortcut = D ? qc0Var.getAlphabeticShortcut() : qc0Var.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (D && alphabeticShortcut == '\b' && i == 67))) {
                return qc0Var;
            }
        }
        return null;
    }

    public void p(List list, int i, KeyEvent keyEvent) {
        boolean D = D();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f.size();
            for (int i2 = 0; i2 < size; i2++) {
                qc0 qc0Var = (qc0) this.f.get(i2);
                if (qc0Var.hasSubMenu()) {
                    ((mc0) qc0Var.getSubMenu()).p(list, i, keyEvent);
                }
                char alphabeticShortcut = D ? qc0Var.getAlphabeticShortcut() : qc0Var.getNumericShortcut();
                if ((modifiers & 69647) == ((D ? qc0Var.getAlphabeticModifiers() : qc0Var.getNumericModifiers()) & 69647) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (D && alphabeticShortcut == '\b' && i == 67)) && qc0Var.isEnabled()) {
                        list.add(qc0Var);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return I(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        qc0 o = o(i, keyEvent);
        boolean I = o != null ? I(o, i2) : false;
        if ((i2 & 2) != 0) {
            d(true);
        }
        return I;
    }

    public void q() {
        ArrayList A2 = A();
        if (this.k) {
            Iterator it = this.w.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                uc0 uc0Var = (uc0) weakReference.get();
                if (uc0Var == null) {
                    this.w.remove(weakReference);
                } else {
                    z |= uc0Var.g();
                }
            }
            if (z) {
                this.i.clear();
                this.j.clear();
                int size = A2.size();
                for (int i = 0; i < size; i++) {
                    qc0 qc0Var = (qc0) A2.get(i);
                    if (qc0Var.k()) {
                        this.i.add(qc0Var);
                    } else {
                        this.j.add(qc0Var);
                    }
                }
            } else {
                this.i.clear();
                this.j.clear();
                this.j.addAll(A());
            }
            this.k = false;
        }
    }

    public ArrayList r() {
        q();
        return this.i;
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int k = k(i);
        if (k >= 0) {
            int size = this.f.size() - k;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || ((qc0) this.f.get(k)).getGroupId() != i) {
                    break;
                }
                K(k, false);
                i2 = i3;
            }
            H(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        K(n(i), true);
    }

    public Context s() {
        return this.a;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            qc0 qc0Var = (qc0) this.f.get(i2);
            if (qc0Var.getGroupId() == i) {
                qc0Var.s(z2);
                qc0Var.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            qc0 qc0Var = (qc0) this.f.get(i2);
            if (qc0Var.getGroupId() == i) {
                qc0Var.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            qc0 qc0Var = (qc0) this.f.get(i2);
            if (qc0Var.getGroupId() == i && qc0Var.x(z)) {
                z2 = true;
            }
        }
        if (z2) {
            H(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.c = z;
        H(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f.size();
    }

    public qc0 t() {
        return this.x;
    }

    public CharSequence u() {
        return this.n;
    }

    public ArrayList v() {
        q();
        return this.j;
    }

    public boolean w() {
        return this.t;
    }

    public Resources y() {
        return this.b;
    }

    public mc0 z() {
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        qc0 qc0Var = (qc0) a(i, i2, i3, charSequence);
        ay0 ay0Var = new ay0(this.a, this, qc0Var);
        qc0Var.w(ay0Var);
        return ay0Var;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.b.getString(i4));
    }
}

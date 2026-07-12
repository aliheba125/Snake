package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class iy0 extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public Context c;
    public Object d;

    public static class a implements MenuItem.OnMenuItemClickListener {
        public static final Class[] c = {MenuItem.class};
        public Object a;
        public Method b;

        public a(Object obj, String str) {
            this.a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.b = cls.getMethod(str, c);
            } catch (Exception e) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.b.invoke(this.a, menuItem)).booleanValue();
                }
                this.b.invoke(this.a, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    public class b {
        public CharSequence A;
        public CharSequence B;
        public ColorStateList C = null;
        public PorterDuff.Mode D = null;
        public Menu a;
        public int b;
        public int c;
        public int d;
        public int e;
        public boolean f;
        public boolean g;
        public boolean h;
        public int i;
        public int j;
        public CharSequence k;
        public CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public String z;

        public b(Menu menu) {
            this.a = menu;
            h();
        }

        public void a() {
            this.h = true;
            i(this.a.add(this.b, this.i, this.j, this.k));
        }

        public SubMenu b() {
            this.h = true;
            SubMenu addSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
            i(addSubMenu.getItem());
            return addSubMenu;
        }

        public final char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        public boolean d() {
            return this.h;
        }

        public final Object e(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, iy0.this.c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot instantiate class: ");
                sb.append(str);
                return null;
            }
        }

        public void f(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = iy0.this.c.obtainStyledAttributes(attributeSet, mn0.J0);
            this.b = obtainStyledAttributes.getResourceId(mn0.L0, 0);
            this.c = obtainStyledAttributes.getInt(mn0.N0, 0);
            this.d = obtainStyledAttributes.getInt(mn0.O0, 0);
            this.e = obtainStyledAttributes.getInt(mn0.P0, 0);
            this.f = obtainStyledAttributes.getBoolean(mn0.M0, true);
            this.g = obtainStyledAttributes.getBoolean(mn0.K0, true);
            obtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            y01 s = y01.s(iy0.this.c, attributeSet, mn0.Q0);
            this.i = s.m(mn0.T0, 0);
            this.j = (s.j(mn0.W0, this.c) & (-65536)) | (s.j(mn0.X0, this.d) & 65535);
            this.k = s.o(mn0.Y0);
            this.l = s.o(mn0.Z0);
            this.m = s.m(mn0.R0, 0);
            this.n = c(s.n(mn0.a1));
            this.o = s.j(mn0.h1, 4096);
            this.p = c(s.n(mn0.b1));
            this.q = s.j(mn0.l1, 4096);
            if (s.q(mn0.c1)) {
                this.r = s.a(mn0.c1, false) ? 1 : 0;
            } else {
                this.r = this.e;
            }
            this.s = s.a(mn0.U0, false);
            this.t = s.a(mn0.V0, this.f);
            this.u = s.a(mn0.S0, this.g);
            this.v = s.j(mn0.m1, -1);
            this.z = s.n(mn0.d1);
            this.w = s.m(mn0.e1, 0);
            this.x = s.n(mn0.g1);
            String n = s.n(mn0.f1);
            this.y = n;
            if (n != null && this.w == 0 && this.x == null) {
                jy0.a(e(n, iy0.f, iy0.this.b));
            }
            this.A = s.o(mn0.i1);
            this.B = s.o(mn0.n1);
            if (s.q(mn0.k1)) {
                this.D = vm.d(s.j(mn0.k1, -1), this.D);
            } else {
                this.D = null;
            }
            if (s.q(mn0.j1)) {
                this.C = s.c(mn0.j1);
            } else {
                this.C = null;
            }
            s.v();
            this.h = false;
        }

        public void h() {
            this.b = 0;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            this.f = true;
            this.g = true;
        }

        public final void i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.z != null) {
                if (iy0.this.c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(iy0.this.b(), this.z));
            }
            if (this.r >= 2 && (menuItem instanceof qc0)) {
                ((qc0) menuItem).s(true);
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) e(str, iy0.e, iy0.this.a));
                z = true;
            }
            int i2 = this.w;
            if (i2 > 0 && !z) {
                menuItem.setActionView(i2);
            }
            oc0.b(menuItem, this.A);
            oc0.f(menuItem, this.B);
            oc0.a(menuItem, this.n, this.o);
            oc0.e(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.D;
            if (mode != null) {
                oc0.d(menuItem, mode);
            }
            ColorStateList colorStateList = this.C;
            if (colorStateList != null) {
                oc0.c(menuItem, colorStateList);
            }
        }
    }

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public iy0(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public Object b() {
        if (this.d == null) {
            this.d = a(this.c);
        }
        return this.d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        if (r15 == 2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
    
        if (r15 == 3) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0053, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0059, code lost:
    
        if (r15.equals(r8) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ab, code lost:
    
        r15 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r15.equals("group") == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        r0.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006c, code lost:
    
        if (r15.equals("item") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r0.d() != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007c, code lost:
    
        if (r15.equals("menu") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007e, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r7 == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
    
        r15 = r13.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        if (r15.equals("group") == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008d, code lost:
    
        r0.f(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        if (r15.equals("item") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0097, code lost:
    
        r0.g(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009f, code lost:
    
        if (r15.equals("menu") == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a1, code lost:
    
        c(r13, r14, r0.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a9, code lost:
    
        r8 = r15;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b7, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b8, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        r6 = false;
        r7 = false;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
    
        if (r6 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        if (r15 == 1) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof hy0)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.c.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof mc0) {
                    mc0 mc0Var = (mc0) menu;
                    if (mc0Var.B()) {
                        mc0Var.W();
                        z = true;
                    }
                }
                c(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((mc0) menu).V();
                }
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((mc0) menu).V();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}

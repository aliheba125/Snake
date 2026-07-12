package androidx.appcompat.view.menu;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStructure;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textservice.SpellCheckerInfo;
import android.view.textservice.TextServicesManager;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.a80;
import androidx.appcompat.view.menu.be0;
import androidx.appcompat.view.menu.ot;
import androidx.appcompat.view.menu.pu;
import androidx.appcompat.view.menu.qt0;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.view.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class nu extends FrameLayout implements be0.c, a80.e {
    public fu a;
    public hu b;
    public ot c;
    public vo0 d;
    public vo0 e;
    public final Set f;
    public boolean g;
    public io.flutter.embedding.engine.a h;
    public final Set i;
    public be0 j;
    public io.flutter.plugin.editing.c k;
    public kw0 l;
    public t90 m;
    public a80 n;
    public h2 o;
    public io.flutter.view.a p;
    public TextServicesManager q;
    public f81 r;
    public final FlutterRenderer.g s;
    public final a.k t;
    public final ContentObserver u;
    public final iu v;
    public final pf w;

    public class a implements a.k {
        public a() {
        }

        @Override // io.flutter.view.a.k
        public void a(boolean z, boolean z2) {
            nu.this.z(z, z2);
        }
    }

    public class b extends ContentObserver {
        public b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            if (nu.this.h == null) {
                return;
            }
            ea0.f("FlutterView", "System settings changed. Sending user settings to Flutter.");
            nu.this.B();
        }
    }

    public class c implements iu {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.iu
        public void c() {
            nu.this.g = false;
            Iterator it = nu.this.f.iterator();
            while (it.hasNext()) {
                ((iu) it.next()).c();
            }
        }

        @Override // androidx.appcompat.view.menu.iu
        public void f() {
            nu.this.g = true;
            Iterator it = nu.this.f.iterator();
            while (it.hasNext()) {
                ((iu) it.next()).f();
            }
        }
    }

    public class d implements pf {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.pf, androidx.window.extensions.core.util.function.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(y91 y91Var) {
            nu.this.setWindowInfoListenerDisplayFeatures(y91Var);
        }
    }

    public class e implements iu {
        public final /* synthetic */ FlutterRenderer a;
        public final /* synthetic */ Runnable b;

        public e(FlutterRenderer flutterRenderer, Runnable runnable) {
            this.a = flutterRenderer;
            this.b = runnable;
        }

        @Override // androidx.appcompat.view.menu.iu
        public void c() {
        }

        @Override // androidx.appcompat.view.menu.iu
        public void f() {
            this.a.l(this);
            this.b.run();
            nu nuVar = nu.this;
            if ((nuVar.d instanceof ot) || nuVar.c == null) {
                return;
            }
            nu.this.c.a();
            nu.this.x();
        }
    }

    public enum f {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    public nu(Context context, fu fuVar) {
        this(context, (AttributeSet) null, fuVar);
    }

    public static /* synthetic */ boolean w(SpellCheckerInfo spellCheckerInfo) {
        return spellCheckerInfo.getPackageName().equals("com.google.android.inputmethod.latin");
    }

    public void A(Runnable runnable) {
        if (this.c == null) {
            ea0.f("FlutterView", "Tried to revert the image view, but no image view is used.");
            return;
        }
        vo0 vo0Var = this.e;
        if (vo0Var == null) {
            ea0.f("FlutterView", "Tried to revert the image view, but no previous surface was used.");
            return;
        }
        this.d = vo0Var;
        this.e = null;
        FlutterRenderer s = this.h.s();
        if (this.h != null && s != null) {
            this.d.b();
            s.g(new e(s, runnable));
        } else {
            this.c.a();
            x();
            runnable.run();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if (r1 != false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void B() {
        boolean z;
        List enabledSpellCheckerInfos;
        boolean isSpellCheckerEnabled;
        qt0.c cVar = (getResources().getConfiguration().uiMode & 48) == 32 ? qt0.c.dark : qt0.c.light;
        TextServicesManager textServicesManager = this.q;
        if (textServicesManager != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                enabledSpellCheckerInfos = textServicesManager.getEnabledSpellCheckerInfos();
                boolean anyMatch = enabledSpellCheckerInfos.stream().anyMatch(new Predicate() { // from class: androidx.appcompat.view.menu.mu
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean w;
                        w = nu.w((SpellCheckerInfo) obj);
                        return w;
                    }
                });
                isSpellCheckerEnabled = this.q.isSpellCheckerEnabled();
                if (isSpellCheckerEnabled) {
                }
            }
            z = true;
            this.h.u().d().f(getResources().getConfiguration().fontScale).c(getResources().getDisplayMetrics()).d(z).b(Settings.System.getInt(getContext().getContentResolver(), "show_password", 1) == 1).g(DateFormat.is24HourFormat(getContext())).e(cVar).a();
        }
        z = false;
        this.h.u().d().f(getResources().getConfiguration().fontScale).c(getResources().getDisplayMetrics()).d(z).b(Settings.System.getInt(getContext().getContentResolver(), "show_password", 1) == 1).g(DateFormat.is24HourFormat(getContext())).e(cVar).a();
    }

    public final void C() {
        if (!v()) {
            ea0.g("FlutterView", "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine.");
            return;
        }
        this.s.a = getResources().getDisplayMetrics().density;
        this.s.p = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.h.s().o(this.s);
    }

    @Override // androidx.appcompat.view.menu.a80.e
    public void a(KeyEvent keyEvent) {
        getRootView().dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public void autofill(SparseArray sparseArray) {
        this.k.j(sparseArray);
    }

    @Override // androidx.appcompat.view.menu.be0.c
    public PointerIcon b(int i) {
        return PointerIcon.getSystemIcon(getContext(), i);
    }

    @Override // androidx.appcompat.view.menu.a80.e
    public boolean c(KeyEvent keyEvent) {
        return this.k.p(keyEvent);
    }

    @Override // android.view.View
    public boolean checkInputConnectionProxy(View view) {
        io.flutter.embedding.engine.a aVar = this.h;
        return aVar != null ? aVar.q().y(view) : super.checkInputConnectionProxy(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            getKeyDispatcherState().startTracking(keyEvent, this);
        } else if (keyEvent.getAction() == 1) {
            getKeyDispatcherState().handleUpEvent(keyEvent);
        }
        return (v() && this.n.b(keyEvent)) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        io.flutter.view.a aVar = this.p;
        if (aVar == null || !aVar.z()) {
            return null;
        }
        return this.p;
    }

    public io.flutter.embedding.engine.a getAttachedFlutterEngine() {
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.a80.e
    public i8 getBinaryMessenger() {
        return this.h.k();
    }

    public ot getCurrentImageSurface() {
        return this.c;
    }

    public boolean k() {
        ot otVar = this.c;
        if (otVar != null) {
            return otVar.e();
        }
        return false;
    }

    public void l(iu iuVar) {
        this.f.add(iuVar);
    }

    public void m(ot otVar) {
        io.flutter.embedding.engine.a aVar = this.h;
        if (aVar != null) {
            otVar.c(aVar.s());
        }
    }

    public void n(io.flutter.embedding.engine.a aVar) {
        ea0.f("FlutterView", "Attaching to a FlutterEngine: " + aVar);
        if (v()) {
            if (aVar == this.h) {
                ea0.f("FlutterView", "Already attached to this engine. Doing nothing.");
                return;
            } else {
                ea0.f("FlutterView", "Currently attached to a different engine. Detaching and then attaching to new engine.");
                s();
            }
        }
        this.h = aVar;
        FlutterRenderer s = aVar.s();
        this.g = s.i();
        this.d.c(s);
        s.g(this.v);
        this.j = new be0(this, this.h.n());
        this.k = new io.flutter.plugin.editing.c(this, this.h.x(), this.h.q());
        try {
            TextServicesManager textServicesManager = (TextServicesManager) getContext().getSystemService("textservices");
            this.q = textServicesManager;
            this.l = new kw0(textServicesManager, this.h.v());
        } catch (Exception unused) {
            ea0.b("FlutterView", "TextServicesManager not supported by device, spell check disabled.");
        }
        this.m = this.h.m();
        this.n = new a80(this);
        this.o = new h2(this.h.s(), false);
        io.flutter.view.a aVar2 = new io.flutter.view.a(this, aVar.h(), (AccessibilityManager) getContext().getSystemService("accessibility"), getContext().getContentResolver(), this.h.q());
        this.p = aVar2;
        aVar2.X(this.t);
        z(this.p.z(), this.p.B());
        this.h.q().a(this.p);
        this.h.q().w(this.h.s());
        this.k.o().restartInput(this);
        B();
        getContext().getContentResolver().registerContentObserver(Settings.System.getUriFor("show_password"), false, this.u);
        C();
        aVar.q().x(this);
        Iterator it = this.i.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            throw null;
        }
        if (this.g) {
            this.v.f();
        }
    }

    public final f o() {
        Context context = getContext();
        int i = context.getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i == 2) {
            if (rotation == 1) {
                return f.RIGHT;
            }
            if (rotation == 3) {
                return f.LEFT;
            }
            if (rotation == 0 || rotation == 2) {
                return f.BOTH;
            }
        }
        return f.NONE;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        Insets insets;
        int i;
        int i2;
        int i3;
        int i4;
        int ime;
        Insets insets2;
        int i5;
        int i6;
        int i7;
        int i8;
        int systemGestures;
        Insets insets3;
        int i9;
        int i10;
        int i11;
        int i12;
        Insets waterfallInsets;
        int i13;
        int i14;
        int i15;
        int i16;
        int statusBars;
        Insets systemGestureInsets;
        int i17;
        int i18;
        int i19;
        int i20;
        WindowInsets onApplyWindowInsets = super.onApplyWindowInsets(windowInsets);
        int i21 = Build.VERSION.SDK_INT;
        if (i21 == 29) {
            systemGestureInsets = windowInsets.getSystemGestureInsets();
            FlutterRenderer.g gVar = this.s;
            i17 = systemGestureInsets.top;
            gVar.l = i17;
            FlutterRenderer.g gVar2 = this.s;
            i18 = systemGestureInsets.right;
            gVar2.m = i18;
            FlutterRenderer.g gVar3 = this.s;
            i19 = systemGestureInsets.bottom;
            gVar3.n = i19;
            FlutterRenderer.g gVar4 = this.s;
            i20 = systemGestureInsets.left;
            gVar4.o = i20;
        }
        boolean z = (getWindowSystemUiVisibility() & 4) == 0;
        boolean z2 = (getWindowSystemUiVisibility() & 2) == 0;
        if (i21 >= 30) {
            int navigationBars = z2 ? WindowInsets.Type.navigationBars() : 0;
            if (z) {
                statusBars = WindowInsets.Type.statusBars();
                navigationBars |= statusBars;
            }
            insets = windowInsets.getInsets(navigationBars);
            FlutterRenderer.g gVar5 = this.s;
            i = insets.top;
            gVar5.d = i;
            FlutterRenderer.g gVar6 = this.s;
            i2 = insets.right;
            gVar6.e = i2;
            FlutterRenderer.g gVar7 = this.s;
            i3 = insets.bottom;
            gVar7.f = i3;
            FlutterRenderer.g gVar8 = this.s;
            i4 = insets.left;
            gVar8.g = i4;
            ime = WindowInsets.Type.ime();
            insets2 = windowInsets.getInsets(ime);
            FlutterRenderer.g gVar9 = this.s;
            i5 = insets2.top;
            gVar9.h = i5;
            FlutterRenderer.g gVar10 = this.s;
            i6 = insets2.right;
            gVar10.i = i6;
            FlutterRenderer.g gVar11 = this.s;
            i7 = insets2.bottom;
            gVar11.j = i7;
            FlutterRenderer.g gVar12 = this.s;
            i8 = insets2.left;
            gVar12.k = i8;
            systemGestures = WindowInsets.Type.systemGestures();
            insets3 = windowInsets.getInsets(systemGestures);
            FlutterRenderer.g gVar13 = this.s;
            i9 = insets3.top;
            gVar13.l = i9;
            FlutterRenderer.g gVar14 = this.s;
            i10 = insets3.right;
            gVar14.m = i10;
            FlutterRenderer.g gVar15 = this.s;
            i11 = insets3.bottom;
            gVar15.n = i11;
            FlutterRenderer.g gVar16 = this.s;
            i12 = insets3.left;
            gVar16.o = i12;
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                waterfallInsets = displayCutout.getWaterfallInsets();
                FlutterRenderer.g gVar17 = this.s;
                int i22 = gVar17.d;
                i13 = waterfallInsets.top;
                gVar17.d = Math.max(Math.max(i22, i13), displayCutout.getSafeInsetTop());
                FlutterRenderer.g gVar18 = this.s;
                int i23 = gVar18.e;
                i14 = waterfallInsets.right;
                gVar18.e = Math.max(Math.max(i23, i14), displayCutout.getSafeInsetRight());
                FlutterRenderer.g gVar19 = this.s;
                int i24 = gVar19.f;
                i15 = waterfallInsets.bottom;
                gVar19.f = Math.max(Math.max(i24, i15), displayCutout.getSafeInsetBottom());
                FlutterRenderer.g gVar20 = this.s;
                int i25 = gVar20.g;
                i16 = waterfallInsets.left;
                gVar20.g = Math.max(Math.max(i25, i16), displayCutout.getSafeInsetLeft());
            }
        } else {
            f fVar = f.NONE;
            if (!z2) {
                fVar = o();
            }
            this.s.d = z ? windowInsets.getSystemWindowInsetTop() : 0;
            this.s.e = (fVar == f.RIGHT || fVar == f.BOTH) ? 0 : windowInsets.getSystemWindowInsetRight();
            this.s.f = (z2 && t(windowInsets) == 0) ? windowInsets.getSystemWindowInsetBottom() : 0;
            this.s.g = (fVar == f.LEFT || fVar == f.BOTH) ? 0 : windowInsets.getSystemWindowInsetLeft();
            FlutterRenderer.g gVar21 = this.s;
            gVar21.h = 0;
            gVar21.i = 0;
            gVar21.j = t(windowInsets);
            this.s.k = 0;
        }
        ea0.f("FlutterView", "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: " + this.s.d + ", Left: " + this.s.g + ", Right: " + this.s.e + "\nKeyboard insets: Bottom: " + this.s.j + ", Left: " + this.s.k + ", Right: " + this.s.i + "System Gesture Insets - Left: " + this.s.o + ", Top: " + this.s.l + ", Right: " + this.s.m + ", Bottom: " + this.s.j);
        C();
        return onApplyWindowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.r = r();
        Activity b2 = o61.b(getContext());
        f81 f81Var = this.r;
        if (f81Var == null || b2 == null) {
            return;
        }
        f81Var.a(b2, lg.h(getContext()), this.w);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.h != null) {
            ea0.f("FlutterView", "Configuration changed. Sending locales and user settings to Flutter.");
            this.m.d(configuration);
            B();
            o61.a(getContext(), this.h);
        }
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return !v() ? super.onCreateInputConnection(editorInfo) : this.k.m(this, this.n, editorInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        f81 f81Var = this.r;
        if (f81Var != null) {
            f81Var.b(this.w);
        }
        this.r = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (v() && this.o.i(motionEvent, getContext())) {
            return true;
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return !v() ? super.onHoverEvent(motionEvent) : this.p.I(motionEvent);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        super.onProvideAutofillVirtualStructure(viewStructure, i);
        this.k.x(viewStructure, i);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ea0.f("FlutterView", "Size changed. Sending Flutter new viewport metrics. FlutterView was " + i3 + " x " + i4 + ", it is now " + i + " x " + i2);
        FlutterRenderer.g gVar = this.s;
        gVar.b = i;
        gVar.c = i2;
        C();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!v()) {
            return super.onTouchEvent(motionEvent);
        }
        requestUnbufferedDispatch(motionEvent);
        return this.o.j(motionEvent);
    }

    public void p() {
        this.d.d();
        ot otVar = this.c;
        if (otVar == null) {
            ot q = q();
            this.c = q;
            addView(q);
        } else {
            otVar.k(getWidth(), getHeight());
        }
        this.e = this.d;
        ot otVar2 = this.c;
        this.d = otVar2;
        io.flutter.embedding.engine.a aVar = this.h;
        if (aVar != null) {
            otVar2.c(aVar.s());
        }
    }

    public ot q() {
        return new ot(getContext(), getWidth(), getHeight(), ot.b.background);
    }

    public f81 r() {
        try {
            return new f81(new h81(g81.a.d(getContext())));
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    public void s() {
        ea0.f("FlutterView", "Detaching from a FlutterEngine: " + this.h);
        if (!v()) {
            ea0.f("FlutterView", "FlutterView not attached to an engine. Not detaching.");
            return;
        }
        Iterator it = this.i.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            throw null;
        }
        getContext().getContentResolver().unregisterContentObserver(this.u);
        this.h.q().F();
        this.h.q().d();
        this.p.P();
        this.p = null;
        this.k.o().restartInput(this);
        this.k.n();
        this.n.d();
        kw0 kw0Var = this.l;
        if (kw0Var != null) {
            kw0Var.b();
        }
        be0 be0Var = this.j;
        if (be0Var != null) {
            be0Var.c();
        }
        FlutterRenderer s = this.h.s();
        this.g = false;
        s.l(this.v);
        s.q();
        s.n(false);
        vo0 vo0Var = this.e;
        if (vo0Var != null && this.d == this.c) {
            this.d = vo0Var;
        }
        this.d.a();
        x();
        this.e = null;
        this.h = null;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        vo0 vo0Var = this.d;
        if (vo0Var instanceof fu) {
            ((fu) vo0Var).setVisibility(i);
        }
    }

    @TargetApi(28)
    public void setWindowInfoListenerDisplayFeatures(y91 y91Var) {
        DisplayCutout displayCutout;
        List<jm> a2 = y91Var.a();
        ArrayList arrayList = new ArrayList();
        for (jm jmVar : a2) {
            ea0.f("FlutterView", "WindowInfoTracker Display Feature reported with bounds = " + jmVar.a().toString() + " and type = " + jmVar.getClass().getSimpleName());
            if (jmVar instanceof pu) {
                pu puVar = (pu) jmVar;
                arrayList.add(new FlutterRenderer.c(jmVar.a(), puVar.b() == pu.a.d ? FlutterRenderer.e.HINGE : FlutterRenderer.e.FOLD, puVar.getState() == pu.b.c ? FlutterRenderer.d.POSTURE_FLAT : puVar.getState() == pu.b.d ? FlutterRenderer.d.POSTURE_HALF_OPENED : FlutterRenderer.d.UNKNOWN));
            } else {
                arrayList.add(new FlutterRenderer.c(jmVar.a(), FlutterRenderer.e.UNKNOWN, FlutterRenderer.d.UNKNOWN));
            }
        }
        WindowInsets rootWindowInsets = getRootWindowInsets();
        if (rootWindowInsets != null && (displayCutout = rootWindowInsets.getDisplayCutout()) != null) {
            for (Rect rect : displayCutout.getBoundingRects()) {
                ea0.f("FlutterView", "DisplayCutout area reported with bounds = " + rect.toString());
                arrayList.add(new FlutterRenderer.c(rect, FlutterRenderer.e.CUTOUT));
            }
        }
        this.s.q = arrayList;
        C();
    }

    public final int t(WindowInsets windowInsets) {
        if (windowInsets.getSystemWindowInsetBottom() < getRootView().getHeight() * 0.18d) {
            return 0;
        }
        return windowInsets.getSystemWindowInsetBottom();
    }

    public final void u() {
        ea0.f("FlutterView", "Initializing FlutterView");
        if (this.a != null) {
            ea0.f("FlutterView", "Internally using a FlutterSurfaceView.");
            addView(this.a);
        } else if (this.b != null) {
            ea0.f("FlutterView", "Internally using a FlutterTextureView.");
            addView(this.b);
        } else {
            ea0.f("FlutterView", "Internally using a FlutterImageView.");
            addView(this.c);
        }
        setFocusable(true);
        setFocusableInTouchMode(true);
        setImportantForAutofill(1);
    }

    public boolean v() {
        io.flutter.embedding.engine.a aVar = this.h;
        return aVar != null && aVar.s() == this.d.getAttachedRenderer();
    }

    public final void x() {
        ot otVar = this.c;
        if (otVar != null) {
            otVar.g();
            removeView(this.c);
            this.c = null;
        }
    }

    public void y(iu iuVar) {
        this.f.remove(iuVar);
    }

    public final void z(boolean z, boolean z2) {
        boolean z3 = false;
        if (this.h.s().j()) {
            setWillNotDraw(false);
            return;
        }
        if (!z && !z2) {
            z3 = true;
        }
        setWillNotDraw(z3);
    }

    public nu(Context context, hu huVar) {
        this(context, (AttributeSet) null, huVar);
    }

    public nu(Context context, AttributeSet attributeSet, fu fuVar) {
        super(context, attributeSet);
        this.f = new HashSet();
        this.i = new HashSet();
        this.s = new FlutterRenderer.g();
        this.t = new a();
        this.u = new b(new Handler(Looper.getMainLooper()));
        this.v = new c();
        this.w = new d();
        this.a = fuVar;
        this.d = fuVar;
        u();
    }

    public nu(Context context, AttributeSet attributeSet, hu huVar) {
        super(context, attributeSet);
        this.f = new HashSet();
        this.i = new HashSet();
        this.s = new FlutterRenderer.g();
        this.t = new a();
        this.u = new b(new Handler(Looper.getMainLooper()));
        this.v = new c();
        this.w = new d();
        this.b = huVar;
        this.d = huVar;
        u();
    }
}

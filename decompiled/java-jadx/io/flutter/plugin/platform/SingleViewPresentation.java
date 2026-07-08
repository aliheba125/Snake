package io.flutter.plugin.platform;

import android.app.AlertDialog;
import android.app.Presentation;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.aa1;
import androidx.appcompat.view.menu.d0;
import androidx.appcompat.view.menu.ou0;
import androidx.appcompat.view.menu.ri0;

@Keep
/* loaded from: classes.dex */
class SingleViewPresentation extends Presentation {
    private static final String TAG = "PlatformViewsController";
    private final d0 accessibilityEventsDelegate;
    private FrameLayout container;
    private final View.OnFocusChangeListener focusChangeListener;
    private final Context outerContext;
    private a rootView;
    private boolean startFocused;
    private final d state;
    private int viewId;

    public static class a extends FrameLayout {
    }

    public static class b extends ContextWrapper {
        public final InputMethodManager a;

        public b(Context context) {
            this(context, null);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Context createDisplayContext(Display display) {
            return new b(super.createDisplayContext(display), this.a);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return "input_method".equals(str) ? this.a : super.getSystemService(str);
        }

        public b(Context context, InputMethodManager inputMethodManager) {
            super(context);
            this.a = inputMethodManager == null ? (InputMethodManager) context.getSystemService("input_method") : inputMethodManager;
        }
    }

    public static class c extends ContextWrapper {
        public final aa1 a;
        public WindowManager b;
        public final Context c;

        public c(Context context, aa1 aa1Var, Context context2) {
            super(context);
            this.a = aa1Var;
            this.c = context2;
        }

        public final WindowManager a() {
            if (this.b == null) {
                this.b = this.a;
            }
            return this.b;
        }

        public final boolean b() {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            for (int i = 0; i < stackTrace.length && i < 11; i++) {
                if (stackTrace[i].getClassName().equals(AlertDialog.class.getCanonicalName()) && stackTrace[i].getMethodName().equals("<init>")) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return "window".equals(str) ? b() ? this.c.getSystemService(str) : a() : super.getSystemService(str);
        }
    }

    public static class d {
        public aa1 a;
        public ou0 b;

        public static /* synthetic */ ri0 a(d dVar) {
            dVar.getClass();
            return null;
        }

        public static /* synthetic */ ri0 b(d dVar, ri0 ri0Var) {
            dVar.getClass();
            return ri0Var;
        }
    }

    public SingleViewPresentation(Context context, Display display, ri0 ri0Var, d0 d0Var, int i, View.OnFocusChangeListener onFocusChangeListener) {
        super(new b(context), display);
        this.startFocused = false;
        this.accessibilityEventsDelegate = d0Var;
        this.viewId = i;
        this.focusChangeListener = onFocusChangeListener;
        this.outerContext = context;
        d dVar = new d();
        this.state = dVar;
        d.b(dVar, ri0Var);
        getWindow().setFlags(8, 8);
        getWindow().setType(2030);
    }

    public d detachState() {
        FrameLayout frameLayout = this.container;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        return this.state;
    }

    public ri0 getView() {
        d.a(this.state);
        return null;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        if (this.state.b == null) {
            this.state.b = new ou0(getContext());
        }
        if (this.state.a == null) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            d dVar = this.state;
            dVar.a = new aa1(windowManager, dVar.b);
        }
        this.container = new FrameLayout(getContext());
        new c(getContext(), this.state.a, this.outerContext);
        d.a(this.state);
        throw null;
    }

    public SingleViewPresentation(Context context, Display display, d0 d0Var, d dVar, View.OnFocusChangeListener onFocusChangeListener, boolean z) {
        super(new b(context), display);
        this.startFocused = false;
        this.accessibilityEventsDelegate = d0Var;
        this.state = dVar;
        this.focusChangeListener = onFocusChangeListener;
        this.outerContext = context;
        getWindow().setFlags(8, 8);
        this.startFocused = z;
    }
}

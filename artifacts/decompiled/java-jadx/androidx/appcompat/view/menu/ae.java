package androidx.appcompat.view.menu;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public class ae extends Dialog implements a90, eg0, rr0 {
    public androidx.lifecycle.i a;
    public final qr0 b;
    public final cg0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(Context context, int i) {
        super(context, i);
        z50.e(context, "context");
        this.b = qr0.d.a(this);
        this.c = new cg0(new Runnable() { // from class: androidx.appcompat.view.menu.zd
            @Override // java.lang.Runnable
            public final void run() {
                ae.d(ae.this);
            }
        });
    }

    public static final void d(ae aeVar) {
        z50.e(aeVar, "this$0");
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        z50.e(view, "view");
        c();
        super.addContentView(view, layoutParams);
    }

    public final androidx.lifecycle.i b() {
        androidx.lifecycle.i iVar = this.a;
        if (iVar != null) {
            return iVar;
        }
        androidx.lifecycle.i iVar2 = new androidx.lifecycle.i(this);
        this.a = iVar2;
        return iVar2;
    }

    public void c() {
        Window window = getWindow();
        z50.b(window);
        View decorView = window.getDecorView();
        z50.d(decorView, "window!!.decorView");
        h61.a(decorView, this);
        Window window2 = getWindow();
        z50.b(window2);
        View decorView2 = window2.getDecorView();
        z50.d(decorView2, "window!!.decorView");
        i61.a(decorView2, this);
        Window window3 = getWindow();
        z50.b(window3);
        View decorView3 = window3.getDecorView();
        z50.d(decorView3, "window!!.decorView");
        j61.a(decorView3, this);
    }

    @Override // androidx.appcompat.view.menu.a90
    public androidx.lifecycle.f h() {
        return b();
    }

    @Override // androidx.appcompat.view.menu.eg0
    public final cg0 k() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.rr0
    public pr0 l() {
        return this.b.b();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.c.e();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            cg0 cg0Var = this.c;
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            z50.d(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            cg0Var.h(onBackInvokedDispatcher);
        }
        this.b.d(bundle);
        b().h(f.a.ON_CREATE);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        z50.d(onSaveInstanceState, "super.onSaveInstanceState()");
        this.b.e(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        b().h(f.a.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        b().h(f.a.ON_DESTROY);
        this.a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        c();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        z50.e(view, "view");
        c();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        z50.e(view, "view");
        c();
        super.setContentView(view, layoutParams);
    }
}

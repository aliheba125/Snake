package androidx.appcompat.view.menu;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.appcompat.view.menu.fi0;
import androidx.appcompat.view.menu.mi0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class mi0 {
    public final Activity a;
    public final fi0 b;
    public final d c;
    public fi0.j d;
    public int e;
    public final fi0.h f;

    public class a implements fi0.h {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void a() {
            mi0.this.t();
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void g(boolean z) {
            mi0.this.w(z);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public CharSequence h(fi0.e eVar) {
            return mi0.this.r(eVar);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void i(List list) {
            mi0.this.A(list);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void j(fi0.j jVar) {
            mi0.this.C(jVar);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void k() {
            mi0.this.y();
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void l() {
            mi0.this.u();
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void m(String str) {
            mi0.this.v(str);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void n(fi0.i iVar) {
            mi0.this.s(iVar);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void o(fi0.g gVar) {
            mi0.this.F(gVar);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void p(fi0.c cVar) {
            mi0.this.x(cVar);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void q(int i) {
            mi0.this.B(i);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void r(String str) {
            mi0.this.D(str);
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public boolean s() {
            return mi0.this.p();
        }

        @Override // androidx.appcompat.view.menu.fi0.h
        public void t(fi0.k kVar) {
            mi0.this.z(kVar);
        }
    }

    public class b implements View.OnSystemUiVisibilityChangeListener {
        public final /* synthetic */ View a;

        public b(View view) {
            this.a = view;
        }

        public final /* synthetic */ void b(int i) {
            if ((i & 4) == 0) {
                mi0.this.b.m(true);
            } else {
                mi0.this.b.m(false);
            }
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(final int i) {
            this.a.post(new Runnable() { // from class: androidx.appcompat.view.menu.ni0
                @Override // java.lang.Runnable
                public final void run() {
                    mi0.b.this.b(i);
                }
            });
        }
    }

    public static /* synthetic */ class c {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[fi0.d.values().length];
            c = iArr;
            try {
                iArr[fi0.d.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[fi0.d.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[fi0.l.values().length];
            b = iArr2;
            try {
                iArr2[fi0.l.TOP_OVERLAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[fi0.l.BOTTOM_OVERLAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[fi0.g.values().length];
            a = iArr3;
            try {
                iArr3[fi0.g.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[fi0.g.LIGHT_IMPACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[fi0.g.MEDIUM_IMPACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[fi0.g.HEAVY_IMPACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[fi0.g.SELECTION_CLICK.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public interface d {
        boolean a();

        void g(boolean z);
    }

    public mi0(Activity activity, fi0 fi0Var, d dVar) {
        a aVar = new a();
        this.f = aVar;
        this.a = activity;
        this.b = fi0Var;
        fi0Var.l(aVar);
        this.c = dVar;
        this.e = 1280;
    }

    public final void A(List list) {
        int i = list.size() == 0 ? 5894 : 1798;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int i3 = c.b[((fi0.l) list.get(i2)).ordinal()];
            if (i3 == 1) {
                i &= -5;
            } else if (i3 == 2) {
                i &= -515;
            }
        }
        this.e = i;
        E();
    }

    public final void B(int i) {
        this.a.setRequestedOrientation(i);
    }

    public final void C(fi0.j jVar) {
        Window window = this.a.getWindow();
        v91 v91Var = new v91(window, window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(201326592);
        }
        fi0.d dVar = jVar.b;
        if (dVar != null) {
            int i2 = c.c[dVar.ordinal()];
            if (i2 == 1) {
                v91Var.b(true);
            } else if (i2 == 2) {
                v91Var.b(false);
            }
        }
        Integer num = jVar.a;
        if (num != null) {
            window.setStatusBarColor(num.intValue());
        }
        Boolean bool = jVar.c;
        if (bool != null && i >= 29) {
            window.setStatusBarContrastEnforced(bool.booleanValue());
        }
        fi0.d dVar2 = jVar.e;
        if (dVar2 != null) {
            int i3 = c.c[dVar2.ordinal()];
            if (i3 == 1) {
                v91Var.a(true);
            } else if (i3 == 2) {
                v91Var.a(false);
            }
        }
        Integer num2 = jVar.d;
        if (num2 != null) {
            window.setNavigationBarColor(num2.intValue());
        }
        Integer num3 = jVar.f;
        if (num3 != null) {
            window.setNavigationBarDividerColor(num3.intValue());
        }
        Boolean bool2 = jVar.g;
        if (bool2 != null && i >= 29) {
            window.setNavigationBarContrastEnforced(bool2.booleanValue());
        }
        this.d = jVar;
    }

    public final void D(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        this.a.startActivity(Intent.createChooser(intent, null));
    }

    public void E() {
        this.a.getWindow().getDecorView().setSystemUiVisibility(this.e);
        fi0.j jVar = this.d;
        if (jVar != null) {
            C(jVar);
        }
    }

    public void F(fi0.g gVar) {
        View decorView = this.a.getWindow().getDecorView();
        int i = c.a[gVar.ordinal()];
        if (i == 1) {
            decorView.performHapticFeedback(0);
            return;
        }
        if (i == 2) {
            decorView.performHapticFeedback(1);
            return;
        }
        if (i == 3) {
            decorView.performHapticFeedback(3);
        } else if (i == 4) {
            decorView.performHapticFeedback(6);
        } else {
            if (i != 5) {
                return;
            }
            decorView.performHapticFeedback(4);
        }
    }

    public final boolean p() {
        ClipDescription primaryClipDescription;
        ClipboardManager clipboardManager = (ClipboardManager) this.a.getSystemService("clipboard");
        if (clipboardManager.hasPrimaryClip() && (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) != null) {
            return primaryClipDescription.hasMimeType("text/*");
        }
        return false;
    }

    public void q() {
        this.b.l(null);
    }

    public final CharSequence r(fi0.e eVar) {
        ClipboardManager clipboardManager = (ClipboardManager) this.a.getSystemService("clipboard");
        CharSequence charSequence = null;
        if (!clipboardManager.hasPrimaryClip()) {
            return null;
        }
        try {
            try {
                ClipData primaryClip = clipboardManager.getPrimaryClip();
                if (primaryClip == null) {
                    return null;
                }
                if (eVar != null && eVar != fi0.e.PLAIN_TEXT) {
                    return null;
                }
                ClipData.Item itemAt = primaryClip.getItemAt(0);
                CharSequence text = itemAt.getText();
                if (text == null) {
                    try {
                        Uri uri = itemAt.getUri();
                        if (uri == null) {
                            ea0.g("PlatformPlugin", "Clipboard item contained no textual content nor a URI to retrieve it from.");
                            return null;
                        }
                        String scheme = uri.getScheme();
                        if (!scheme.equals("content")) {
                            ea0.g("PlatformPlugin", "Clipboard item contains a Uri with scheme '" + scheme + "'that is unhandled.");
                            return null;
                        }
                        AssetFileDescriptor openTypedAssetFileDescriptor = this.a.getContentResolver().openTypedAssetFileDescriptor(uri, "text/*", null);
                        text = itemAt.coerceToText(this.a);
                        if (openTypedAssetFileDescriptor != null) {
                            openTypedAssetFileDescriptor.close();
                        }
                    } catch (IOException e) {
                        e = e;
                        charSequence = text;
                        ea0.h("PlatformPlugin", "Failed to close AssetFileDescriptor while trying to read text from URI.", e);
                        return charSequence;
                    }
                }
                return text;
            } catch (IOException e2) {
                e = e2;
            }
        } catch (FileNotFoundException unused) {
            ea0.g("PlatformPlugin", "Clipboard text was unable to be received from content URI.");
            return null;
        } catch (SecurityException e3) {
            ea0.h("PlatformPlugin", "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview", e3);
            return null;
        }
    }

    public final void s(fi0.i iVar) {
        if (iVar == fi0.i.CLICK) {
            this.a.getWindow().getDecorView().playSoundEffect(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t() {
        d dVar = this.c;
        if (dVar == null || !dVar.a()) {
            Activity activity = this.a;
            if (activity instanceof eg0) {
                ((eg0) activity).k().e();
            } else {
                activity.finish();
            }
        }
    }

    public final void u() {
        E();
    }

    public final void v(String str) {
        ((ClipboardManager) this.a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label?", str));
    }

    public final void w(boolean z) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.g(z);
        }
    }

    public final void x(fi0.c cVar) {
        this.a.setTaskDescription(new ActivityManager.TaskDescription(cVar.b, 0, cVar.a));
    }

    public final void y() {
        View decorView = this.a.getWindow().getDecorView();
        decorView.setOnSystemUiVisibilityChangeListener(new b(decorView));
    }

    public final void z(fi0.k kVar) {
        int i;
        if (kVar == fi0.k.LEAN_BACK) {
            i = 1798;
        } else if (kVar == fi0.k.IMMERSIVE) {
            i = 3846;
        } else if (kVar == fi0.k.IMMERSIVE_STICKY) {
            i = 5894;
        } else if (kVar != fi0.k.EDGE_TO_EDGE || Build.VERSION.SDK_INT < 29) {
            return;
        } else {
            i = 1792;
        }
        this.e = i;
        E();
    }
}

package androidx.appcompat.view.menu;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public final class v91 {
    public final e a;

    public static class a extends e {
        public final Window a;
        public final uv0 b;

        public a(Window window, uv0 uv0Var) {
            this.a = window;
            this.b = uv0Var;
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void c(int i) {
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    f(i2);
                }
            }
        }

        public void d(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public void e(int i) {
            this.a.addFlags(i);
        }

        public final void f(int i) {
            if (i == 1) {
                g(4);
                h(1024);
            } else if (i == 2) {
                g(2);
            } else {
                if (i != 8) {
                    return;
                }
                this.b.a();
            }
        }

        public void g(int i) {
            View decorView = this.a.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        public void h(int i) {
            this.a.clearFlags(i);
        }
    }

    public static class b extends a {
        public b(Window window, uv0 uv0Var) {
            super(window, uv0Var);
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void b(boolean z) {
            if (!z) {
                g(8192);
                return;
            }
            h(67108864);
            e(Integer.MIN_VALUE);
            d(8192);
        }
    }

    public static class c extends b {
        public c(Window window, uv0 uv0Var) {
            super(window, uv0Var);
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void a(boolean z) {
            if (!z) {
                g(16);
                return;
            }
            h(134217728);
            e(Integer.MIN_VALUE);
            d(16);
        }
    }

    public static class d extends e {
        public final v91 a;
        public final WindowInsetsController b;
        public final uv0 c;
        public final nu0 d;
        public Window e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public d(Window window, v91 v91Var, uv0 uv0Var) {
            this(r0, v91Var, uv0Var);
            WindowInsetsController insetsController;
            insetsController = window.getInsetsController();
            this.e = window;
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void a(boolean z) {
            if (z) {
                if (this.e != null) {
                    d(16);
                }
                this.b.setSystemBarsAppearance(16, 16);
            } else {
                if (this.e != null) {
                    e(16);
                }
                this.b.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void b(boolean z) {
            if (z) {
                if (this.e != null) {
                    d(8192);
                }
                this.b.setSystemBarsAppearance(8, 8);
            } else {
                if (this.e != null) {
                    e(8192);
                }
                this.b.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.appcompat.view.menu.v91.e
        public void c(int i) {
            if ((i & 8) != 0) {
                this.c.a();
            }
            this.b.show(i & (-9));
        }

        public void d(int i) {
            View decorView = this.e.getDecorView();
            decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
        }

        public void e(int i) {
            View decorView = this.e.getDecorView();
            decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
        }

        public d(WindowInsetsController windowInsetsController, v91 v91Var, uv0 uv0Var) {
            this.d = new nu0();
            this.b = windowInsetsController;
            this.a = v91Var;
            this.c = uv0Var;
        }
    }

    public static class e {
        public abstract void a(boolean z);

        public abstract void b(boolean z);

        public abstract void c(int i);
    }

    public v91(WindowInsetsController windowInsetsController) {
        this.a = new d(windowInsetsController, this, new uv0(windowInsetsController));
    }

    public static v91 d(WindowInsetsController windowInsetsController) {
        return new v91(windowInsetsController);
    }

    public void a(boolean z) {
        this.a.a(z);
    }

    public void b(boolean z) {
        this.a.b(z);
    }

    public void c(int i) {
        this.a.c(i);
    }

    public v91(Window window, View view) {
        uv0 uv0Var = new uv0(view);
        if (Build.VERSION.SDK_INT >= 30) {
            this.a = new d(window, this, uv0Var);
        } else {
            this.a = new c(window, uv0Var);
        }
    }
}

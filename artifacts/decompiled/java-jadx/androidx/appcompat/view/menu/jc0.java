package androidx.appcompat.view.menu;

import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;

/* loaded from: classes.dex */
public abstract class jc0 {
    public static final b a = new b(null);

    public static final class a extends jc0 {
        public final MeasurementManager b;

        public a(MeasurementManager measurementManager) {
            z50.e(measurementManager, "mMeasurementManager");
            this.b = measurementManager;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object a(hl hlVar, xg xgVar) {
            xg b;
            Object c;
            Object c2;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.deleteRegistrations(k(hlVar), new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            c2 = c60.c();
            return w == c2 ? w : r31.a;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object b(xg xgVar) {
            xg b;
            Object c;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.getMeasurementApiStatus(new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            return w;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object c(Uri uri, InputEvent inputEvent, xg xgVar) {
            xg b;
            Object c;
            Object c2;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.registerSource(uri, inputEvent, new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            c2 = c60.c();
            return w == c2 ? w : r31.a;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object d(Uri uri, xg xgVar) {
            xg b;
            Object c;
            Object c2;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.registerTrigger(uri, new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            c2 = c60.c();
            return w == c2 ? w : r31.a;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object e(t71 t71Var, xg xgVar) {
            xg b;
            Object c;
            Object c2;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.registerWebSource(l(t71Var), new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            c2 = c60.c();
            return w == c2 ? w : r31.a;
        }

        @Override // androidx.appcompat.view.menu.jc0
        public Object f(u71 u71Var, xg xgVar) {
            xg b;
            Object c;
            Object c2;
            b = b60.b(xgVar);
            y9 y9Var = new y9(b, 1);
            y9Var.z();
            this.b.registerWebTrigger(m(u71Var), new ic0(), yg0.a(y9Var));
            Object w = y9Var.w();
            c = c60.c();
            if (w == c) {
                gj.c(xgVar);
            }
            c2 = c60.c();
            return w == c2 ? w : r31.a;
        }

        public final DeletionRequest k(hl hlVar) {
            ac0.a();
            throw null;
        }

        public final WebSourceRegistrationRequest l(t71 t71Var) {
            xb0.a();
            throw null;
        }

        public final WebTriggerRegistrationRequest m(u71 u71Var) {
            zb0.a();
            throw null;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(Context context) {
            this(yb0.a(r2));
            z50.e(context, "context");
            Object systemService = context.getSystemService((Class<Object>) hc0.a());
            z50.d(systemService, "context.getSystemService…:class.java\n            )");
        }
    }

    public static final class b {
        public b() {
        }

        public /* synthetic */ b(lj ljVar) {
            this();
        }

        public final jc0 a(Context context) {
            z50.e(context, "context");
            StringBuilder sb = new StringBuilder();
            sb.append("AdServicesInfo.version=");
            w1 w1Var = w1.a;
            sb.append(w1Var.a());
            if (w1Var.a() >= 5) {
                return new a(context);
            }
            return null;
        }
    }

    public abstract Object a(hl hlVar, xg xgVar);

    public abstract Object b(xg xgVar);

    public abstract Object c(Uri uri, InputEvent inputEvent, xg xgVar);

    public abstract Object d(Uri uri, xg xgVar);

    public abstract Object e(t71 t71Var, xg xgVar);

    public abstract Object f(u71 u71Var, xg xgVar);
}

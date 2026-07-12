package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.view.menu.a90;
import androidx.appcompat.view.menu.lj;
import androidx.appcompat.view.menu.z50;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public class n extends Fragment {
    public static final b b = new b(null);
    public a a;

    public interface a {
        void a();

        void b();

        void c();
    }

    public static final class b {
        public b() {
        }

        public /* synthetic */ b(lj ljVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Activity activity, f.a aVar) {
            z50.e(activity, "activity");
            z50.e(aVar, "event");
            if (activity instanceof a90) {
                f h = ((a90) activity).h();
                if (h instanceof i) {
                    ((i) h).h(aVar);
                }
            }
        }

        public final n b(Activity activity) {
            z50.e(activity, "<this>");
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            z50.c(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            return (n) findFragmentByTag;
        }

        public final void c(Activity activity) {
            z50.e(activity, "activity");
            if (Build.VERSION.SDK_INT >= 29) {
                c.Companion.a(activity);
            }
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragmentManager.beginTransaction().add(new n(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
                fragmentManager.executePendingTransactions();
            }
        }
    }

    public static final class c implements Application.ActivityLifecycleCallbacks {
        public static final a Companion = new a(null);

        public static final class a {
            public a() {
            }

            public /* synthetic */ a(lj ljVar) {
                this();
            }

            public final void a(Activity activity) {
                z50.e(activity, "activity");
                activity.registerActivityLifecycleCallbacks(new c());
            }
        }

        public static final void registerIn(Activity activity) {
            Companion.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            z50.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            z50.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            z50.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            z50.e(activity, "activity");
            n.b.a(activity, f.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            z50.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            z50.e(activity, "activity");
            z50.e(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            z50.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            z50.e(activity, "activity");
        }
    }

    public final void a(f.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            b bVar = b;
            Activity activity = getActivity();
            z50.d(activity, "activity");
            bVar.a(activity, aVar);
        }
    }

    public final void b(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void c(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    public final void d(a aVar) {
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void e(a aVar) {
        this.a = aVar;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.a);
        a(f.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(f.a.ON_DESTROY);
        this.a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(f.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        c(this.a);
        a(f.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        d(this.a);
        a(f.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(f.a.ON_STOP);
    }
}

package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public abstract class uy extends c61 {
    public Runnable d;
    public OverScroller e;
    public boolean f;
    public int g;
    public int h;
    public int i;
    public VelocityTracker j;

    public class a implements Runnable {
        public final CoordinatorLayout m;
        public final View n;

        public a(CoordinatorLayout coordinatorLayout, View view) {
            this.m = coordinatorLayout;
            this.n = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.n == null || (overScroller = uy.this.e) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                uy.this.M(this.m, this.n);
                return;
            }
            uy uyVar = uy.this;
            uyVar.O(this.m, this.n, uyVar.e.getCurrY());
            m51.c0(this.n, this);
        }
    }

    public uy() {
        this.g = -1;
        this.i = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.g);
                if (findPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(findPointerIndex);
                int i = this.h - y;
                this.h = y;
                N(coordinatorLayout, view, i, J(view), 0);
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i2 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.g = motionEvent.getPointerId(i2);
                    this.h = (int) (motionEvent.getY(i2) + 0.5f);
                }
            }
            z = false;
            velocityTracker2 = this.j;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.f || z;
        }
        VelocityTracker velocityTracker3 = this.j;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.j.computeCurrentVelocity(1000);
            I(coordinatorLayout, view, -K(view), 0, this.j.getYVelocity(this.g));
            z = true;
            this.f = false;
            this.g = -1;
            velocityTracker = this.j;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.j = null;
            }
            velocityTracker2 = this.j;
            if (velocityTracker2 != null) {
            }
            if (this.f) {
                return true;
            }
        }
        z = false;
        this.f = false;
        this.g = -1;
        velocityTracker = this.j;
        if (velocityTracker != null) {
        }
        velocityTracker2 = this.j;
        if (velocityTracker2 != null) {
        }
        if (this.f) {
        }
    }

    public abstract boolean G(View view);

    public final void H() {
        if (this.j == null) {
            this.j = VelocityTracker.obtain();
        }
    }

    public final boolean I(CoordinatorLayout coordinatorLayout, View view, int i, int i2, float f) {
        Runnable runnable = this.d;
        if (runnable != null) {
            view.removeCallbacks(runnable);
            this.d = null;
        }
        if (this.e == null) {
            this.e = new OverScroller(view.getContext());
        }
        this.e.fling(0, E(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.e.computeScrollOffset()) {
            M(coordinatorLayout, view);
            return false;
        }
        a aVar = new a(coordinatorLayout, view);
        this.d = aVar;
        m51.c0(view, aVar);
        return true;
    }

    public abstract int J(View view);

    public abstract int K(View view);

    public abstract int L();

    public abstract void M(CoordinatorLayout coordinatorLayout, View view);

    public final int N(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        return P(coordinatorLayout, view, L() - i, i2, i3);
    }

    public int O(CoordinatorLayout coordinatorLayout, View view, int i) {
        return P(coordinatorLayout, view, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public abstract int P(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.i < 0) {
            this.i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f) {
            int i = this.g;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.h) > this.i) {
                this.h = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.g = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = G(view) && coordinatorLayout.z(view, x, y2);
            this.f = z;
            if (z) {
                this.h = y2;
                this.g = motionEvent.getPointerId(0);
                H();
                OverScroller overScroller = this.e;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.e.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.j;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    public uy(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.i = -1;
    }
}

package androidx.appcompat.view.menu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.appcompat.view.menu.ck;
import androidx.appcompat.view.menu.cv;
import androidx.appcompat.view.menu.gw0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class ck extends gw0 {

    public static final class a extends gw0.b {
        public final b d;

        /* renamed from: androidx.appcompat.view.menu.ck$a$a, reason: collision with other inner class name */
        public static final class AnimationAnimationListenerC0002a implements Animation.AnimationListener {
            public final /* synthetic */ gw0.d a;
            public final /* synthetic */ ViewGroup b;
            public final /* synthetic */ View c;
            public final /* synthetic */ a d;

            public AnimationAnimationListenerC0002a(gw0.d dVar, ViewGroup viewGroup, View view, a aVar) {
                this.a = dVar;
                this.b = viewGroup;
                this.c = view;
                this.d = aVar;
            }

            public static final void b(ViewGroup viewGroup, View view, a aVar) {
                z50.e(viewGroup, "$container");
                z50.e(aVar, "this$0");
                viewGroup.endViewTransition(view);
                aVar.h().a().f(aVar);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                z50.e(animation, "animation");
                final ViewGroup viewGroup = this.b;
                final View view = this.c;
                final a aVar = this.d;
                viewGroup.post(new Runnable() { // from class: androidx.appcompat.view.menu.bk
                    @Override // java.lang.Runnable
                    public final void run() {
                        ck.a.AnimationAnimationListenerC0002a.b(viewGroup, view, aVar);
                    }
                });
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Animation from operation ");
                    sb.append(this.a);
                    sb.append(" has ended.");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
                z50.e(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                z50.e(animation, "animation");
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Animation from operation ");
                    sb.append(this.a);
                    sb.append(" has reached onAnimationStart.");
                }
            }
        }

        public a(b bVar) {
            z50.e(bVar, "animationInfo");
            this.d = bVar;
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void c(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            gw0.d a = this.d.a();
            View view = a.i().H;
            view.clearAnimation();
            viewGroup.endViewTransition(view);
            this.d.a().f(this);
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Animation from operation ");
                sb.append(a);
                sb.append(" has been cancelled.");
            }
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void d(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            if (this.d.b()) {
                this.d.a().f(this);
                return;
            }
            Context context = viewGroup.getContext();
            gw0.d a = this.d.a();
            View view = a.i().H;
            b bVar = this.d;
            z50.d(context, "context");
            cv.a c = bVar.c(context);
            if (c == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            Animation animation = c.a;
            if (animation == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            if (a.h() != gw0.d.b.REMOVED) {
                view.startAnimation(animation);
                this.d.a().f(this);
                return;
            }
            viewGroup.startViewTransition(view);
            cv.b bVar2 = new cv.b(animation, viewGroup, view);
            bVar2.setAnimationListener(new AnimationAnimationListenerC0002a(a, viewGroup, view, this));
            view.startAnimation(bVar2);
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Animation from operation ");
                sb.append(a);
                sb.append(" has started.");
            }
        }

        public final b h() {
            return this.d;
        }
    }

    public static final class b extends f {
        public final boolean b;
        public boolean c;
        public cv.a d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(gw0.d dVar, boolean z) {
            super(dVar);
            z50.e(dVar, "operation");
            this.b = z;
        }

        public final cv.a c(Context context) {
            z50.e(context, "context");
            if (this.c) {
                return this.d;
            }
            cv.a b = cv.b(context, a().i(), a().h() == gw0.d.b.VISIBLE, this.b);
            this.d = b;
            this.c = true;
            return b;
        }
    }

    public static final class c extends gw0.b {
        public final b d;
        public AnimatorSet e;

        public static final class a extends AnimatorListenerAdapter {
            public final /* synthetic */ ViewGroup a;
            public final /* synthetic */ View b;
            public final /* synthetic */ boolean c;
            public final /* synthetic */ gw0.d d;
            public final /* synthetic */ c e;

            public a(ViewGroup viewGroup, View view, boolean z, gw0.d dVar, c cVar) {
                this.a = viewGroup;
                this.b = view;
                this.c = z;
                this.d = dVar;
                this.e = cVar;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                z50.e(animator, "anim");
                this.a.endViewTransition(this.b);
                if (this.c) {
                    gw0.d.b h = this.d.h();
                    View view = this.b;
                    z50.d(view, "viewToAnimate");
                    h.e(view, this.a);
                }
                this.e.h().a().f(this.e);
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Animator from operation ");
                    sb.append(this.d);
                    sb.append(" has ended.");
                }
            }
        }

        public c(b bVar) {
            z50.e(bVar, "animatorInfo");
            this.d = bVar;
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public boolean b() {
            return true;
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void c(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            AnimatorSet animatorSet = this.e;
            if (animatorSet == null) {
                this.d.a().f(this);
                return;
            }
            gw0.d a2 = this.d.a();
            if (a2.n()) {
                e.a.a(animatorSet);
            } else {
                animatorSet.end();
            }
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Animator from operation ");
                sb.append(a2);
                sb.append(" has been canceled");
                sb.append(a2.n() ? " with seeking." : ".");
                sb.append(' ');
            }
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void d(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            gw0.d a2 = this.d.a();
            AnimatorSet animatorSet = this.e;
            if (animatorSet == null) {
                this.d.a().f(this);
                return;
            }
            animatorSet.start();
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Animator from operation ");
                sb.append(a2);
                sb.append(" has started.");
            }
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void e(h7 h7Var, ViewGroup viewGroup) {
            z50.e(h7Var, "backEvent");
            z50.e(viewGroup, "container");
            gw0.d a2 = this.d.a();
            AnimatorSet animatorSet = this.e;
            if (animatorSet == null) {
                this.d.a().f(this);
                return;
            }
            if (Build.VERSION.SDK_INT < 34 || !a2.i().m) {
                return;
            }
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Adding BackProgressCallbacks for Animators to operation ");
                sb.append(a2);
            }
            long a3 = d.a.a(animatorSet);
            long a4 = (long) (h7Var.a() * a3);
            if (a4 == 0) {
                a4 = 1;
            }
            if (a4 == a3) {
                a4 = a3 - 1;
            }
            if (mv.v0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Setting currentPlayTime to ");
                sb2.append(a4);
                sb2.append(" for Animator ");
                sb2.append(animatorSet);
                sb2.append(" on operation ");
                sb2.append(a2);
            }
            e.a.b(animatorSet, a4);
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void f(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            if (this.d.b()) {
                return;
            }
            Context context = viewGroup.getContext();
            b bVar = this.d;
            z50.d(context, "context");
            cv.a c = bVar.c(context);
            this.e = c != null ? c.b : null;
            gw0.d a2 = this.d.a();
            av i = a2.i();
            boolean z = a2.h() == gw0.d.b.GONE;
            View view = i.H;
            viewGroup.startViewTransition(view);
            AnimatorSet animatorSet = this.e;
            if (animatorSet != null) {
                animatorSet.addListener(new a(viewGroup, view, z, a2, this));
            }
            AnimatorSet animatorSet2 = this.e;
            if (animatorSet2 != null) {
                animatorSet2.setTarget(view);
            }
        }

        public final b h() {
            return this.d;
        }
    }

    public static final class d {
        public static final d a = new d();

        public final long a(AnimatorSet animatorSet) {
            z50.e(animatorSet, "animatorSet");
            return animatorSet.getTotalDuration();
        }
    }

    public static final class e {
        public static final e a = new e();

        public final void a(AnimatorSet animatorSet) {
            z50.e(animatorSet, "animatorSet");
            animatorSet.reverse();
        }

        public final void b(AnimatorSet animatorSet, long j) {
            z50.e(animatorSet, "animatorSet");
            animatorSet.setCurrentPlayTime(j);
        }
    }

    public static class f {
        public final gw0.d a;

        public f(gw0.d dVar) {
            z50.e(dVar, "operation");
            this.a = dVar;
        }

        public final gw0.d a() {
            return this.a;
        }

        public final boolean b() {
            gw0.d.b bVar;
            View view = this.a.i().H;
            gw0.d.b a = view != null ? gw0.d.b.m.a(view) : null;
            gw0.d.b h = this.a.h();
            return a == h || !(a == (bVar = gw0.d.b.VISIBLE) || h == bVar);
        }
    }

    public static final class g extends gw0.b {
        public final List d;
        public final gw0.d e;
        public final gw0.d f;
        public final aw g;
        public final Object h;
        public final ArrayList i;
        public final ArrayList j;
        public final o4 k;
        public final ArrayList l;
        public final ArrayList m;
        public final o4 n;
        public final o4 o;
        public final boolean p;
        public final ca q;
        public Object r;

        public static final class a extends g80 implements dw {
            public final /* synthetic */ ViewGroup o;
            public final /* synthetic */ Object p;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ViewGroup viewGroup, Object obj) {
                super(0);
                this.o = viewGroup;
                this.p = obj;
            }

            public final void a() {
                g.this.v().e(this.o, this.p);
            }

            @Override // androidx.appcompat.view.menu.dw
            public /* bridge */ /* synthetic */ Object d() {
                a();
                return r31.a;
            }
        }

        public static final class b extends g80 implements dw {
            public final /* synthetic */ ViewGroup o;
            public final /* synthetic */ Object p;
            public final /* synthetic */ bo0 q;

            public static final class a extends g80 implements dw {
                public final /* synthetic */ g n;
                public final /* synthetic */ ViewGroup o;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(g gVar, ViewGroup viewGroup) {
                    super(0);
                    this.n = gVar;
                    this.o = viewGroup;
                }

                public static final void c(g gVar, ViewGroup viewGroup) {
                    z50.e(gVar, "this$0");
                    z50.e(viewGroup, "$container");
                    Iterator it = gVar.w().iterator();
                    while (it.hasNext()) {
                        gw0.d a = ((h) it.next()).a();
                        View P = a.i().P();
                        if (P != null) {
                            a.h().e(P, viewGroup);
                        }
                    }
                }

                public final void b() {
                    mv.v0(2);
                    aw v = this.n.v();
                    Object s = this.n.s();
                    z50.b(s);
                    final g gVar = this.n;
                    final ViewGroup viewGroup = this.o;
                    v.d(s, new Runnable() { // from class: androidx.appcompat.view.menu.jk
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.g.b.a.c(ck.g.this, viewGroup);
                        }
                    });
                }

                @Override // androidx.appcompat.view.menu.dw
                public /* bridge */ /* synthetic */ Object d() {
                    b();
                    return r31.a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(ViewGroup viewGroup, Object obj, bo0 bo0Var) {
                super(0);
                this.o = viewGroup;
                this.p = obj;
                this.q = bo0Var;
            }

            public final void a() {
                g gVar = g.this;
                gVar.C(gVar.v().j(this.o, this.p));
                boolean z = g.this.s() != null;
                Object obj = this.p;
                ViewGroup viewGroup = this.o;
                if (!z) {
                    throw new IllegalStateException(("Unable to start transition " + obj + " for container " + viewGroup + '.').toString());
                }
                this.q.m = new a(g.this, viewGroup);
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Started executing operations from ");
                    sb.append(g.this.t());
                    sb.append(" to ");
                    sb.append(g.this.u());
                }
            }

            @Override // androidx.appcompat.view.menu.dw
            public /* bridge */ /* synthetic */ Object d() {
                a();
                return r31.a;
            }
        }

        public g(List list, gw0.d dVar, gw0.d dVar2, aw awVar, Object obj, ArrayList arrayList, ArrayList arrayList2, o4 o4Var, ArrayList arrayList3, ArrayList arrayList4, o4 o4Var2, o4 o4Var3, boolean z) {
            z50.e(list, "transitionInfos");
            z50.e(awVar, "transitionImpl");
            z50.e(arrayList, "sharedElementFirstOutViews");
            z50.e(arrayList2, "sharedElementLastInViews");
            z50.e(o4Var, "sharedElementNameMapping");
            z50.e(arrayList3, "enteringNames");
            z50.e(arrayList4, "exitingNames");
            z50.e(o4Var2, "firstOutViews");
            z50.e(o4Var3, "lastInViews");
            this.d = list;
            this.e = dVar;
            this.f = dVar2;
            this.g = awVar;
            this.h = obj;
            this.i = arrayList;
            this.j = arrayList2;
            this.k = o4Var;
            this.l = arrayList3;
            this.m = arrayList4;
            this.n = o4Var2;
            this.o = o4Var3;
            this.p = z;
            this.q = new ca();
        }

        public static final void A(gw0.d dVar, g gVar) {
            z50.e(dVar, "$operation");
            z50.e(gVar, "this$0");
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Transition for operation ");
                sb.append(dVar);
                sb.append(" has completed");
            }
            dVar.f(gVar);
        }

        public static final void p(gw0.d dVar, gw0.d dVar2, g gVar) {
            z50.e(gVar, "this$0");
            yv.a(dVar.i(), dVar2.i(), gVar.p, gVar.o, false);
        }

        public static final void q(aw awVar, View view, Rect rect) {
            z50.e(awVar, "$impl");
            z50.e(rect, "$lastInEpicenterRect");
            awVar.k(view, rect);
        }

        public static final void r(ArrayList arrayList) {
            z50.e(arrayList, "$transitioningViews");
            yv.d(arrayList, 4);
        }

        public static final void y(gw0.d dVar, g gVar) {
            z50.e(dVar, "$operation");
            z50.e(gVar, "this$0");
            if (mv.v0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Transition for operation ");
                sb.append(dVar);
                sb.append(" has completed");
            }
            dVar.f(gVar);
        }

        public static final void z(bo0 bo0Var) {
            z50.e(bo0Var, "$seekCancelLambda");
            dw dwVar = (dw) bo0Var.m;
            if (dwVar != null) {
                dwVar.d();
            }
        }

        public final void B(ArrayList arrayList, ViewGroup viewGroup, dw dwVar) {
            yv.d(arrayList, 4);
            ArrayList q = this.g.q(this.j);
            if (mv.v0(2)) {
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    z50.d(next, "sharedElementFirstOutViews");
                    View view = (View) next;
                    StringBuilder sb = new StringBuilder();
                    sb.append("View: ");
                    sb.append(view);
                    sb.append(" Name: ");
                    sb.append(m51.F(view));
                }
                Iterator it2 = this.j.iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    z50.d(next2, "sharedElementLastInViews");
                    View view2 = (View) next2;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("View: ");
                    sb2.append(view2);
                    sb2.append(" Name: ");
                    sb2.append(m51.F(view2));
                }
            }
            dwVar.d();
            this.g.y(viewGroup, this.i, this.j, q, this.k);
            yv.d(arrayList, 0);
            this.g.A(this.h, this.i, this.j);
        }

        public final void C(Object obj) {
            this.r = obj;
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public boolean b() {
            if (this.g.m()) {
                List<h> list = this.d;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (h hVar : list) {
                        if (Build.VERSION.SDK_INT < 34 || hVar.f() == null || !this.g.n(hVar.f())) {
                            break;
                        }
                    }
                }
                Object obj = this.h;
                if (obj == null || this.g.n(obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void c(ViewGroup viewGroup) {
            z50.e(viewGroup, "container");
            this.q.a();
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void d(ViewGroup viewGroup) {
            int j;
            z50.e(viewGroup, "container");
            if (!viewGroup.isLaidOut()) {
                for (h hVar : this.d) {
                    gw0.d a2 = hVar.a();
                    if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: Container ");
                        sb.append(viewGroup);
                        sb.append(" has not been laid out. Completing operation ");
                        sb.append(a2);
                    }
                    hVar.a().f(this);
                }
                return;
            }
            Object obj = this.r;
            if (obj != null) {
                aw awVar = this.g;
                z50.b(obj);
                awVar.c(obj);
                if (mv.v0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Ending execution of operations from ");
                    sb2.append(this.e);
                    sb2.append(" to ");
                    sb2.append(this.f);
                    return;
                }
                return;
            }
            lh0 o = o(viewGroup, this.f, this.e);
            ArrayList arrayList = (ArrayList) o.a();
            Object b2 = o.b();
            List list = this.d;
            j = tc.j(list, 10);
            ArrayList<gw0.d> arrayList2 = new ArrayList(j);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(((h) it.next()).a());
            }
            for (final gw0.d dVar : arrayList2) {
                this.g.w(dVar.i(), b2, this.q, new Runnable() { // from class: androidx.appcompat.view.menu.dk
                    @Override // java.lang.Runnable
                    public final void run() {
                        ck.g.y(gw0.d.this, this);
                    }
                });
            }
            B(arrayList, viewGroup, new a(viewGroup, b2));
            if (mv.v0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Completed executing operations from ");
                sb3.append(this.e);
                sb3.append(" to ");
                sb3.append(this.f);
            }
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void e(h7 h7Var, ViewGroup viewGroup) {
            z50.e(h7Var, "backEvent");
            z50.e(viewGroup, "container");
            Object obj = this.r;
            if (obj != null) {
                this.g.t(obj, h7Var.a());
            }
        }

        @Override // androidx.appcompat.view.menu.gw0.b
        public void f(ViewGroup viewGroup) {
            int j;
            z50.e(viewGroup, "container");
            if (!viewGroup.isLaidOut()) {
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    gw0.d a2 = ((h) it.next()).a();
                    if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: Container ");
                        sb.append(viewGroup);
                        sb.append(" has not been laid out. Skipping onStart for operation ");
                        sb.append(a2);
                    }
                }
                return;
            }
            if (x() && this.h != null && !b()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring shared elements transition ");
                sb2.append(this.h);
                sb2.append(" between ");
                sb2.append(this.e);
                sb2.append(" and ");
                sb2.append(this.f);
                sb2.append(" as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed.");
            }
            if (b() && x()) {
                final bo0 bo0Var = new bo0();
                lh0 o = o(viewGroup, this.f, this.e);
                ArrayList arrayList = (ArrayList) o.a();
                Object b2 = o.b();
                List list = this.d;
                j = tc.j(list, 10);
                ArrayList<gw0.d> arrayList2 = new ArrayList(j);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((h) it2.next()).a());
                }
                for (final gw0.d dVar : arrayList2) {
                    this.g.x(dVar.i(), b2, this.q, new Runnable() { // from class: androidx.appcompat.view.menu.ek
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.g.z(bo0.this);
                        }
                    }, new Runnable() { // from class: androidx.appcompat.view.menu.fk
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.g.A(gw0.d.this, this);
                        }
                    });
                }
                B(arrayList, viewGroup, new b(viewGroup, b2, bo0Var));
            }
        }

        public final void n(ArrayList arrayList, View view) {
            if (!(view instanceof ViewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (s51.a(viewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    z50.d(childAt, "child");
                    n(arrayList, childAt);
                }
            }
        }

        public final lh0 o(ViewGroup viewGroup, gw0.d dVar, final gw0.d dVar2) {
            Iterator it;
            Set x;
            Set x2;
            final gw0.d dVar3 = dVar;
            View view = new View(viewGroup.getContext());
            final Rect rect = new Rect();
            Iterator it2 = this.d.iterator();
            boolean z = false;
            View view2 = null;
            while (it2.hasNext()) {
                if (((h) it2.next()).g() && dVar2 != null && dVar3 != null && (!this.k.isEmpty()) && this.h != null) {
                    yv.a(dVar.i(), dVar2.i(), this.p, this.n, true);
                    og0.a(viewGroup, new Runnable() { // from class: androidx.appcompat.view.menu.gk
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.g.p(gw0.d.this, dVar2, this);
                        }
                    });
                    this.i.addAll(this.n.values());
                    if (!this.m.isEmpty()) {
                        Object obj = this.m.get(0);
                        z50.d(obj, "exitingNames[0]");
                        view2 = (View) this.n.get((String) obj);
                        this.g.v(this.h, view2);
                    }
                    this.j.addAll(this.o.values());
                    if (!this.l.isEmpty()) {
                        Object obj2 = this.l.get(0);
                        z50.d(obj2, "enteringNames[0]");
                        final View view3 = (View) this.o.get((String) obj2);
                        if (view3 != null) {
                            final aw awVar = this.g;
                            og0.a(viewGroup, new Runnable() { // from class: androidx.appcompat.view.menu.hk
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ck.g.q(aw.this, view3, rect);
                                }
                            });
                            z = true;
                        }
                    }
                    this.g.z(this.h, view, this.i);
                    aw awVar2 = this.g;
                    Object obj3 = this.h;
                    awVar2.s(obj3, null, null, null, null, obj3, this.j);
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it3 = this.d.iterator();
            Object obj4 = null;
            Object obj5 = null;
            while (it3.hasNext()) {
                h hVar = (h) it3.next();
                gw0.d a2 = hVar.a();
                Object h = this.g.h(hVar.f());
                if (h != null) {
                    final ArrayList arrayList2 = new ArrayList();
                    it = it3;
                    View view4 = a2.i().H;
                    Object obj6 = obj5;
                    z50.d(view4, "operation.fragment.mView");
                    n(arrayList2, view4);
                    if (this.h != null && (a2 == dVar2 || a2 == dVar3)) {
                        if (a2 == dVar2) {
                            x2 = ad.x(this.i);
                            arrayList2.removeAll(x2);
                        } else {
                            x = ad.x(this.j);
                            arrayList2.removeAll(x);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        this.g.a(h, view);
                    } else {
                        this.g.b(h, arrayList2);
                        this.g.s(h, h, arrayList2, null, null, null, null);
                        if (a2.h() == gw0.d.b.GONE) {
                            a2.r(false);
                            ArrayList arrayList3 = new ArrayList(arrayList2);
                            arrayList3.remove(a2.i().H);
                            this.g.r(h, a2.i().H, arrayList3);
                            og0.a(viewGroup, new Runnable() { // from class: androidx.appcompat.view.menu.ik
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ck.g.r(arrayList2);
                                }
                            });
                        }
                    }
                    if (a2.h() == gw0.d.b.VISIBLE) {
                        arrayList.addAll(arrayList2);
                        if (z) {
                            this.g.u(h, rect);
                        }
                        if (mv.v0(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Entering Transition: ");
                            sb.append(h);
                            Iterator it4 = arrayList2.iterator();
                            while (it4.hasNext()) {
                                Object next = it4.next();
                                z50.d(next, "transitioningViews");
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("View: ");
                                sb2.append((View) next);
                            }
                        }
                    } else {
                        this.g.v(h, view2);
                        if (mv.v0(2)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Exiting Transition: ");
                            sb3.append(h);
                            Iterator it5 = arrayList2.iterator();
                            while (it5.hasNext()) {
                                Object next2 = it5.next();
                                z50.d(next2, "transitioningViews");
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("View: ");
                                sb4.append((View) next2);
                            }
                        }
                    }
                    if (hVar.h()) {
                        obj4 = this.g.p(obj4, h, null);
                        dVar3 = dVar;
                        it3 = it;
                        obj5 = obj6;
                    } else {
                        obj5 = this.g.p(obj6, h, null);
                    }
                } else {
                    it = it3;
                }
                dVar3 = dVar;
                it3 = it;
            }
            Object o = this.g.o(obj4, obj5, this.h);
            if (mv.v0(2)) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Final merged transition: ");
                sb5.append(o);
            }
            return new lh0(arrayList, o);
        }

        public final Object s() {
            return this.r;
        }

        public final gw0.d t() {
            return this.e;
        }

        public final gw0.d u() {
            return this.f;
        }

        public final aw v() {
            return this.g;
        }

        public final List w() {
            return this.d;
        }

        public final boolean x() {
            List list = this.d;
            if ((list instanceof Collection) && list.isEmpty()) {
                return true;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!((h) it.next()).a().i().m) {
                    return false;
                }
            }
            return true;
        }
    }

    public static final class h extends f {
        public final Object b;
        public final boolean c;
        public final Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(gw0.d dVar, boolean z, boolean z2) {
            super(dVar);
            Object J;
            z50.e(dVar, "operation");
            gw0.d.b h = dVar.h();
            gw0.d.b bVar = gw0.d.b.VISIBLE;
            if (h == bVar) {
                av i = dVar.i();
                J = z ? i.H() : i.s();
            } else {
                av i2 = dVar.i();
                J = z ? i2.J() : i2.v();
            }
            this.b = J;
            this.c = dVar.h() == bVar ? z ? dVar.i().n() : dVar.i().m() : true;
            this.d = z2 ? z ? dVar.i().L() : dVar.i().K() : null;
        }

        public final aw c() {
            aw d = d(this.b);
            aw d2 = d(this.d);
            if (d == null || d2 == null || d == d2) {
                return d == null ? d2 : d;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + a().i() + " returned Transition " + this.b + " which uses a different Transition  type than its shared element transition " + this.d).toString());
        }

        public final aw d(Object obj) {
            if (obj == null) {
                return null;
            }
            aw awVar = yv.b;
            if (awVar != null && awVar.g(obj)) {
                return awVar;
            }
            aw awVar2 = yv.c;
            if (awVar2 != null && awVar2.g(obj)) {
                return awVar2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + a().i() + " is not a valid framework Transition or AndroidX Transition");
        }

        public final Object e() {
            return this.d;
        }

        public final Object f() {
            return this.b;
        }

        public final boolean g() {
            return this.d != null;
        }

        public final boolean h() {
            return this.c;
        }
    }

    public static final class i extends g80 implements fw {
        public final /* synthetic */ Collection n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Collection collection) {
            super(1);
            this.n = collection;
        }

        @Override // androidx.appcompat.view.menu.fw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean i(Map.Entry entry) {
            boolean n;
            z50.e(entry, "entry");
            n = ad.n(this.n, m51.F((View) entry.getValue()));
            return Boolean.valueOf(n);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck(ViewGroup viewGroup) {
        super(viewGroup);
        z50.e(viewGroup, "container");
    }

    public static final void D(ck ckVar, gw0.d dVar) {
        z50.e(ckVar, "this$0");
        z50.e(dVar, "$operation");
        ckVar.c(dVar);
    }

    public final void C(List list) {
        ArrayList<b> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            xc.k(arrayList2, ((b) it.next()).a().g());
        }
        boolean z = !arrayList2.isEmpty();
        Iterator it2 = list.iterator();
        boolean z2 = false;
        while (it2.hasNext()) {
            b bVar = (b) it2.next();
            Context context = t().getContext();
            gw0.d a2 = bVar.a();
            z50.d(context, "context");
            cv.a c2 = bVar.c(context);
            if (c2 != null) {
                if (c2.b == null) {
                    arrayList.add(bVar);
                } else {
                    av i2 = a2.i();
                    if (!(!a2.g().isEmpty())) {
                        if (a2.h() == gw0.d.b.GONE) {
                            a2.r(false);
                        }
                        a2.b(new c(bVar));
                        z2 = true;
                    } else if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Ignoring Animator set on ");
                        sb.append(i2);
                        sb.append(" as this Fragment was involved in a Transition.");
                    }
                }
            }
        }
        for (b bVar2 : arrayList) {
            gw0.d a3 = bVar2.a();
            av i3 = a3.i();
            if (z) {
                if (mv.v0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Ignoring Animation set on ");
                    sb2.append(i3);
                    sb2.append(" as Animations cannot run alongside Transitions.");
                }
            } else if (!z2) {
                a3.b(new a(bVar2));
            } else if (mv.v0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Ignoring Animation set on ");
                sb3.append(i3);
                sb3.append(" as Animations cannot run alongside Animators.");
            }
        }
    }

    public final void E(List list, boolean z, gw0.d dVar, gw0.d dVar2) {
        Object obj;
        aw awVar;
        Iterator it;
        lh0 a2;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (!((h) obj2).b()) {
                arrayList.add(obj2);
            }
        }
        ArrayList<h> arrayList2 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (((h) obj3).c() != null) {
                arrayList2.add(obj3);
            }
        }
        aw awVar2 = null;
        for (h hVar : arrayList2) {
            aw c2 = hVar.c();
            if (awVar2 != null && c2 != awVar2) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + hVar.a().i() + " returned Transition " + hVar.f() + " which uses a different Transition type than other Fragments.").toString());
            }
            awVar2 = c2;
        }
        if (awVar2 == null) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        o4 o4Var = new o4();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        o4 o4Var2 = new o4();
        o4 o4Var3 = new o4();
        Iterator it2 = arrayList2.iterator();
        ArrayList arrayList7 = arrayList5;
        ArrayList arrayList8 = arrayList6;
        loop3: while (true) {
            obj = null;
            while (it2.hasNext()) {
                h hVar2 = (h) it2.next();
                if (hVar2.g() && dVar != null && dVar2 != null) {
                    obj = awVar2.B(awVar2.h(hVar2.e()));
                    arrayList8 = dVar2.i().M();
                    z50.d(arrayList8, "lastIn.fragment.sharedElementSourceNames");
                    ArrayList M = dVar.i().M();
                    z50.d(M, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList N = dVar.i().N();
                    z50.d(N, "firstOut.fragment.sharedElementTargetNames");
                    int size = N.size();
                    it = it2;
                    int i2 = 0;
                    while (i2 < size) {
                        int i3 = size;
                        int indexOf = arrayList8.indexOf(N.get(i2));
                        ArrayList arrayList9 = N;
                        if (indexOf != -1) {
                            arrayList8.set(indexOf, M.get(i2));
                        }
                        i2++;
                        size = i3;
                        N = arrayList9;
                    }
                    arrayList7 = dVar2.i().N();
                    z50.d(arrayList7, "lastIn.fragment.sharedElementTargetNames");
                    if (z) {
                        dVar.i().t();
                        dVar2.i().w();
                        a2 = p21.a(null, null);
                    } else {
                        dVar.i().w();
                        dVar2.i().t();
                        a2 = p21.a(null, null);
                    }
                    jy0.a(a2.a());
                    jy0.a(a2.b());
                    int size2 = arrayList8.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj4 = arrayList8.get(i4);
                        int i5 = size2;
                        z50.d(obj4, "exitingNames[i]");
                        Object obj5 = arrayList7.get(i4);
                        z50.d(obj5, "enteringNames[i]");
                        o4Var.put((String) obj4, (String) obj5);
                        i4++;
                        size2 = i5;
                        awVar2 = awVar2;
                    }
                    awVar = awVar2;
                    if (mv.v0(2)) {
                        Iterator it3 = arrayList7.iterator();
                        while (it3.hasNext()) {
                            String str = (String) it3.next();
                            StringBuilder sb = new StringBuilder();
                            sb.append("Name: ");
                            sb.append(str);
                        }
                        Iterator it4 = arrayList8.iterator();
                        while (it4.hasNext()) {
                            String str2 = (String) it4.next();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Name: ");
                            sb2.append(str2);
                        }
                    }
                    View view = dVar.i().H;
                    z50.d(view, "firstOut.fragment.mView");
                    F(o4Var2, view);
                    o4Var2.o(arrayList8);
                    o4Var.o(o4Var2.keySet());
                    View view2 = dVar2.i().H;
                    z50.d(view2, "lastIn.fragment.mView");
                    F(o4Var3, view2);
                    o4Var3.o(arrayList7);
                    o4Var3.o(o4Var.values());
                    yv.c(o4Var, o4Var3);
                    Collection keySet = o4Var.keySet();
                    z50.d(keySet, "sharedElementNameMapping.keys");
                    G(o4Var2, keySet);
                    Collection values = o4Var.values();
                    z50.d(values, "sharedElementNameMapping.values");
                    G(o4Var3, values);
                    if (o4Var.isEmpty()) {
                        break;
                    }
                } else {
                    awVar = awVar2;
                    it = it2;
                }
                it2 = it;
                awVar2 = awVar;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Ignoring shared elements transition ");
            sb3.append(obj);
            sb3.append(" between ");
            sb3.append(dVar);
            sb3.append(" and ");
            sb3.append(dVar2);
            sb3.append(" as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element.");
            arrayList3.clear();
            arrayList4.clear();
            it2 = it;
            awVar2 = awVar;
        }
        aw awVar3 = awVar2;
        if (obj == null) {
            if (arrayList2.isEmpty()) {
                return;
            }
            Iterator it5 = arrayList2.iterator();
            while (it5.hasNext()) {
                if (((h) it5.next()).f() == null) {
                }
            }
            return;
        }
        g gVar = new g(arrayList2, dVar, dVar2, awVar3, obj, arrayList3, arrayList4, o4Var, arrayList7, arrayList8, o4Var2, o4Var3, z);
        Iterator it6 = arrayList2.iterator();
        while (it6.hasNext()) {
            ((h) it6.next()).a().b(gVar);
        }
    }

    public final void F(Map map, View view) {
        String F = m51.F(view);
        if (F != null) {
            map.put(F, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    z50.d(childAt, "child");
                    F(map, childAt);
                }
            }
        }
    }

    public final void G(o4 o4Var, Collection collection) {
        Set entrySet = o4Var.entrySet();
        z50.d(entrySet, "entries");
        xc.m(entrySet, new i(collection));
    }

    public final void H(List list) {
        Object s;
        s = ad.s(list);
        av i2 = ((gw0.d) s).i();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            gw0.d dVar = (gw0.d) it.next();
            dVar.i().K.b = i2.K.b;
            dVar.i().K.c = i2.K.c;
            dVar.i().K.d = i2.K.d;
            dVar.i().K.e = i2.K.e;
        }
    }

    @Override // androidx.appcompat.view.menu.gw0
    public void d(List list, boolean z) {
        Object obj;
        Object obj2;
        z50.e(list, "operations");
        Iterator it = list.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            gw0.d dVar = (gw0.d) obj2;
            gw0.d.b.a aVar = gw0.d.b.m;
            View view = dVar.i().H;
            z50.d(view, "operation.fragment.mView");
            gw0.d.b a2 = aVar.a(view);
            gw0.d.b bVar = gw0.d.b.VISIBLE;
            if (a2 == bVar && dVar.h() != bVar) {
                break;
            }
        }
        gw0.d dVar2 = (gw0.d) obj2;
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            Object previous = listIterator.previous();
            gw0.d dVar3 = (gw0.d) previous;
            gw0.d.b.a aVar2 = gw0.d.b.m;
            View view2 = dVar3.i().H;
            z50.d(view2, "operation.fragment.mView");
            gw0.d.b a3 = aVar2.a(view2);
            gw0.d.b bVar2 = gw0.d.b.VISIBLE;
            if (a3 != bVar2 && dVar3.h() == bVar2) {
                obj = previous;
                break;
            }
        }
        gw0.d dVar4 = (gw0.d) obj;
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Executing operations from ");
            sb.append(dVar2);
            sb.append(" to ");
            sb.append(dVar4);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        H(list);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final gw0.d dVar5 = (gw0.d) it2.next();
            arrayList.add(new b(dVar5, z));
            boolean z2 = false;
            if (z) {
                if (dVar5 != dVar2) {
                    arrayList2.add(new h(dVar5, z, z2));
                    dVar5.a(new Runnable() { // from class: androidx.appcompat.view.menu.ak
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.D(ck.this, dVar5);
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new h(dVar5, z, z2));
                dVar5.a(new Runnable() { // from class: androidx.appcompat.view.menu.ak
                    @Override // java.lang.Runnable
                    public final void run() {
                        ck.D(ck.this, dVar5);
                    }
                });
            } else {
                if (dVar5 != dVar4) {
                    arrayList2.add(new h(dVar5, z, z2));
                    dVar5.a(new Runnable() { // from class: androidx.appcompat.view.menu.ak
                        @Override // java.lang.Runnable
                        public final void run() {
                            ck.D(ck.this, dVar5);
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new h(dVar5, z, z2));
                dVar5.a(new Runnable() { // from class: androidx.appcompat.view.menu.ak
                    @Override // java.lang.Runnable
                    public final void run() {
                        ck.D(ck.this, dVar5);
                    }
                });
            }
        }
        E(arrayList2, z, dVar2, dVar4);
        C(arrayList);
    }
}

.class public abstract Landroidx/appcompat/view/menu/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/appcompat/view/menu/a90;
.implements Landroidx/appcompat/view/menu/b61;
.implements Landroidx/lifecycle/e;
.implements Landroidx/appcompat/view/menu/rr0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/av$f;,
        Landroidx/appcompat/view/menu/av$e;
    }
.end annotation


# static fields
.field public static final a0:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Landroidx/appcompat/view/menu/av$e;

.field public L:Ljava/lang/Runnable;

.field public M:Z

.field public N:Landroid/view/LayoutInflater;

.field public O:Z

.field public P:Ljava/lang/String;

.field public Q:Landroidx/lifecycle/f$b;

.field public R:Landroidx/lifecycle/i;

.field public S:Landroidx/appcompat/view/menu/cw;

.field public T:Landroidx/appcompat/view/menu/je0;

.field public U:Landroidx/lifecycle/r$b;

.field public V:Landroidx/appcompat/view/menu/qr0;

.field public W:I

.field public final X:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final Y:Ljava/util/ArrayList;

.field public final Z:Landroidx/appcompat/view/menu/av$f;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Landroidx/appcompat/view/menu/av;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Landroidx/appcompat/view/menu/mv;

.field public u:Landroidx/appcompat/view/menu/mv;

.field public v:Landroidx/appcompat/view/menu/av;

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/av;->a0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->j:Ljava/lang/Boolean;

    new-instance v0, Landroidx/appcompat/view/menu/nv;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nv;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->E:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->J:Z

    new-instance v0, Landroidx/appcompat/view/menu/av$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/av$a;-><init>(Landroidx/appcompat/view/menu/av;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->L:Ljava/lang/Runnable;

    sget-object v0, Landroidx/lifecycle/f$b;->q:Landroidx/lifecycle/f$b;

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->Q:Landroidx/lifecycle/f$b;

    new-instance v0, Landroidx/appcompat/view/menu/je0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/je0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->T:Landroidx/appcompat/view/menu/je0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->X:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->Y:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/av$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/av$b;-><init>(Landroidx/appcompat/view/menu/av;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->Z:Landroidx/appcompat/view/menu/av$f;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R()V

    return-void
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/av;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->Z()V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->f:I

    return v0
.end method

.method public A0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/av;->e0(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/mv;->x(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public final B()Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    return-object v0
.end method

.method public B0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->r:Z

    new-instance v0, Landroidx/appcompat/view/menu/cw;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->c()Landroidx/appcompat/view/menu/a61;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/zu;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/zu;-><init>(Landroidx/appcompat/view/menu/av;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/cw;-><init>(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/a61;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/av;->f0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cw;->d()V

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Setting ViewLifecycleOwner on View "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/h61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/a90;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/k61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/b61;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/j61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/rr0;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->T:Landroidx/appcompat/view/menu/je0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/je0;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cw;->e()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C()Landroidx/appcompat/view/menu/mv;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->z()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cw;->h()Landroidx/lifecycle/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->o:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f$b;->e(Landroidx/lifecycle/f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->h0()V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/n90;->a(Landroidx/appcompat/view/menu/a90;)Landroidx/appcompat/view/menu/n90;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/n90;->b()V

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->r:Z

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av$e;->a:Z

    return v0
.end method

.method public D0()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i0()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->N:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->y()V

    new-instance v0, Landroidx/appcompat/view/menu/nv;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nv;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public E()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->d:I

    return v0
.end method

.method public E0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->j0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/av;->N:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->e:I

    return v0
.end method

.method public F0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->onLowMemory()V

    return-void
.end method

.method public G()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->q:F

    return v0
.end method

.method public G0(Landroid/view/MenuItem;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->m0(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mv;->C(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public H()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/av;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->v()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public H0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->E()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x6

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->n0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public I0(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->o0(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mv;->F(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public J()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/av;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->s()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public J0()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/mv;->A0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/av;->j:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/av;->p0(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->G()V

    :cond_1
    return-void
.end method

.method public K()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public K0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    const/4 v0, 0x7

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->q0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->H()V

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/av;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->K()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public L0(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->r0(Landroid/os/Bundle;)V

    return-void
.end method

.method public M()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public M0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mv;->Q(Z)Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->s0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I()V

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public N()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public N0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->K()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->t0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/dy0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->I()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public O0()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/av;->u0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->L()V

    return-void
.end method

.method public P()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    return-object v0
.end method

.method public final P0(Landroidx/appcompat/view/menu/av$f;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/av$f;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public Q()Landroidx/lifecycle/j;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->T:Landroidx/appcompat/view/menu/je0;

    return-object v0
.end method

.method public final Q0()Landroidx/appcompat/view/menu/bv;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->j()Landroidx/appcompat/view/menu/bv;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final R()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/appcompat/view/menu/a90;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    invoke-static {p0}, Landroidx/appcompat/view/menu/qr0;->a(Landroidx/appcompat/view/menu/rr0;)Landroidx/appcompat/view/menu/qr0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->V:Landroidx/appcompat/view/menu/qr0;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->U:Landroidx/lifecycle/r$b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Y:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->Z:Landroidx/appcompat/view/menu/av$f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Z:Landroidx/appcompat/view/menu/av$f;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/av;->P0(Landroidx/appcompat/view/menu/av$f;)V

    :cond_0
    return-void
.end method

.method public final R0()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->q()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->P:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->k:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->l:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->o:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->p:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->q:Z

    iput v0, p0, Landroidx/appcompat/view/menu/av;->s:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    new-instance v2, Landroidx/appcompat/view/menu/nv;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/nv;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    iput v0, p0, Landroidx/appcompat/view/menu/av;->w:I

    iput v0, p0, Landroidx/appcompat/view/menu/av;->x:I

    iput-object v1, p0, Landroidx/appcompat/view/menu/av;->y:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->z:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->A:Z

    return-void
.end method

.method public final S0()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->P()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T0()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "childFragmentManager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/mv;->V0(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->w()V

    :cond_0
    return-void
.end method

.method public final U()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mv;->y0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final U0()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/av;->V0(Landroid/os/Bundle;)V

    :cond_2
    iput-object v1, p0, Landroidx/appcompat/view/menu/av;->b:Landroid/os/Bundle;

    return-void
.end method

.method public final V()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/av;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->c:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->v0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/cw;->a(Landroidx/lifecycle/f$a;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroidx/appcompat/view/menu/dy0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final W()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/av;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/mv;->z0(Landroidx/appcompat/view/menu/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W0(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    iput p1, v0, Landroidx/appcompat/view/menu/av$e;->b:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object p1

    iput p2, p1, Landroidx/appcompat/view/menu/av$e;->c:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object p1

    iput p3, p1, Landroidx/appcompat/view/menu/av$e;->d:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object p1

    iput p4, p1, Landroidx/appcompat/view/menu/av$e;->e:I

    return-void
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av$e;->s:Z

    return v0
.end method

.method public X0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/av;->f:Landroid/os/Bundle;

    return-void
.end method

.method public final Y()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->C0()Z

    move-result v0

    return v0
.end method

.method public Y0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    iput-object p1, v0, Landroidx/appcompat/view/menu/av$e;->r:Landroid/view/View;

    return-void
.end method

.method public final synthetic Z()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->S:Landroidx/appcompat/view/menu/cw;

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/cw;->f(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->d:Landroid/os/Bundle;

    return-void
.end method

.method public Z0(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    iput p1, v0, Landroidx/appcompat/view/menu/av$e;->f:I

    return-void
.end method

.method public a0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public a1(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/appcompat/view/menu/av$e;->a:Z

    return-void
.end method

.method public b()Landroidx/appcompat/view/menu/gi;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find Application instance from Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v1, Landroidx/appcompat/view/menu/ie0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ie0;-><init>()V

    if-eqz v0, :cond_3

    sget-object v2, Landroidx/lifecycle/r$a;->e:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Landroidx/lifecycle/p;->a:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/p;->b:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->o()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/lifecycle/p;->c:Landroidx/appcompat/view/menu/gi$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->o()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/ie0;->b(Landroidx/appcompat/view/menu/gi$b;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public b0(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->T0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mv;->B0(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->w()V

    :cond_0
    return-void
.end method

.method public b1(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    iput p1, v0, Landroidx/appcompat/view/menu/av$e;->q:F

    return-void
.end method

.method public c()Landroidx/appcompat/view/menu/a61;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->z()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->t:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/mv;->q0(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/a61;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c0(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    iput-object p1, v0, Landroidx/appcompat/view/menu/av$e;->g:Ljava/util/ArrayList;

    iput-object p2, v0, Landroidx/appcompat/view/menu/av$e;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public d0(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d1(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public e1()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/av$e;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->i()Landroidx/appcompat/view/menu/av$e;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/av$e;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget p3, p0, Landroidx/appcompat/view/menu/av;->W:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Landroidx/appcompat/view/menu/dv;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/av$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/av$c;-><init>(Landroidx/appcompat/view/menu/av;)V

    return-object v0
.end method

.method public g0()V
    .locals 0

    return-void
.end method

.method public h()Landroidx/lifecycle/f;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public h0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroidx/appcompat/view/menu/av$e;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/av$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/av$e;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    return-object v0
.end method

.method public i0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public final j()Landroidx/appcompat/view/menu/bv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public k0(Z)V
    .locals 0

    return-void
.end method

.method public final l()Landroidx/appcompat/view/menu/pr0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->V:Landroidx/appcompat/view/menu/qr0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qr0;->b()Landroidx/appcompat/view/menu/pr0;

    move-result-object v0

    return-object v0
.end method

.method public l0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public o0(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->Q0()Landroidx/appcompat/view/menu/bv;

    const/4 p1, 0x0

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public final p()Landroidx/appcompat/view/menu/mv;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p0(Z)V
    .locals 0

    return-void
.end method

.method public q()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->b:I

    return v0
.end method

.method public r0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public s0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/av;->d1(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public t()Landroidx/appcompat/view/menu/wt0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public t0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/av;->w:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/av;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroidx/appcompat/view/menu/av$e;->c:I

    return v0
.end method

.method public u0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public v0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    return-void
.end method

.method public w()Landroidx/appcompat/view/menu/wt0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public w0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I0()V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->a0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->U0()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->u()V

    return-void

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/dy0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->K:Landroidx/appcompat/view/menu/av$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/av$e;->r:Landroid/view/View;

    return-object v0
.end method

.method public x0()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/av$f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av$f;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->g()Landroidx/appcompat/view/menu/dv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroidx/appcompat/view/menu/mv;->j(Landroidx/appcompat/view/menu/fv;Landroidx/appcompat/view/menu/dv;Landroidx/appcompat/view/menu/av;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->F:Z

    throw v2
.end method

.method public y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y0(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final z()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->Q:Landroidx/lifecycle/f$b;

    sget-object v1, Landroidx/lifecycle/f$b;->n:Landroidx/lifecycle/f$b;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->v:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->z()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public z0(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/av;->u:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->I0()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/av;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    new-instance v2, Landroidx/appcompat/view/menu/av$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/av$d;-><init>(Landroidx/appcompat/view/menu/av;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i;->a(Landroidx/appcompat/view/menu/z80;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/av;->b0(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/av;->O:Z

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/av;->F:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->R:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/f$a;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/dy0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/view/menu/dy0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

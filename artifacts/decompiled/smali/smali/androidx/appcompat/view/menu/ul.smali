.class public Landroidx/appcompat/view/menu/ul;
.super Landroidx/appcompat/view/menu/av;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public b0:Landroid/os/Handler;

.field public c0:Ljava/lang/Runnable;

.field public d0:Landroid/content/DialogInterface$OnCancelListener;

.field public e0:Landroid/content/DialogInterface$OnDismissListener;

.field public f0:I

.field public g0:I

.field public h0:Z

.field public i0:Z

.field public j0:I

.field public k0:Z

.field public l0:Landroidx/appcompat/view/menu/zf0;

.field public m0:Landroid/app/Dialog;

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/av;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/ul$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ul$a;-><init>(Landroidx/appcompat/view/menu/ul;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ul;->c0:Ljava/lang/Runnable;

    new-instance v0, Landroidx/appcompat/view/menu/ul$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ul$b;-><init>(Landroidx/appcompat/view/menu/ul;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ul;->d0:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Landroidx/appcompat/view/menu/ul$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ul$c;-><init>(Landroidx/appcompat/view/menu/ul;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ul;->e0:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/ul;->f0:I

    iput v0, p0, Landroidx/appcompat/view/menu/ul;->g0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->h0:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    new-instance v1, Landroidx/appcompat/view/menu/ul$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/ul$d;-><init>(Landroidx/appcompat/view/menu/ul;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ul;->l0:Landroidx/appcompat/view/menu/zf0;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->q0:Z

    return-void
.end method

.method public static synthetic f1(Landroidx/appcompat/view/menu/ul;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic g1(Landroidx/appcompat/view/menu/ul;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ul;->e0:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public static synthetic h1(Landroidx/appcompat/view/menu/ul;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    return p0
.end method


# virtual methods
.method public B0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/av;->B0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->a0(Landroid/os/Bundle;)V

    return-void
.end method

.method public b0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->b0(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ul;->b0:Landroid/os/Handler;

    iget v0, p0, Landroidx/appcompat/view/menu/av;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/ul;->f0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/ul;->g0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->h0:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    :cond_1
    return-void
.end method

.method public g()Landroidx/appcompat/view/menu/dv;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/av;->g()Landroidx/appcompat/view/menu/dv;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/ul$e;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/menu/ul$e;-><init>(Landroidx/appcompat/view/menu/ul;Landroidx/appcompat/view/menu/dv;)V

    return-object v1
.end method

.method public h0()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/av;->h0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->n0:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->o0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ul;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->q0:Z

    :cond_1
    return-void
.end method

.method public i0()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/av;->i0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->p0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->o0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->o0:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->Q()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul;->l0:Landroidx/appcompat/view/menu/zf0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->d(Landroidx/appcompat/view/menu/zf0;)V

    return-void
.end method

.method public final i1(ZZZ)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->o0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->o0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->p0:Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul;->b0:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ul;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/ul;->b0:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul;->c0:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->n0:Z

    iget p2, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    if-ltz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/mv;->N0(II)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object p2

    iget p3, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    invoke-virtual {p2, p3, v0, p1}, Landroidx/appcompat/view/menu/mv;->L0(IIZ)V

    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->C()Landroidx/appcompat/view/menu/mv;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/mv;->l()Landroidx/appcompat/view/menu/xv;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/xv;->n(Z)Landroidx/appcompat/view/menu/xv;

    invoke-virtual {p2, p0}, Landroidx/appcompat/view/menu/xv;->k(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/xv;

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/xv;->g()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/xv;->f()I

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/xv;->e()I

    :goto_2
    return-void
.end method

.method public j0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->j0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->k0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ul;->o1(Landroid/os/Bundle;)V

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowsDialog = false: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreatingDialog = true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-object v0
.end method

.method public j1()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    return-object v0
.end method

.method public k1()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ul;->g0:I

    return v0
.end method

.method public l1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/ae;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->R0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ul;->k1()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/view/menu/ae;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public m1(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->q0:Z

    return v0
.end method

.method public final o1(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->q0:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->k0:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ul;->l1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/appcompat/view/menu/ul;->f0:I

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/view/menu/ul;->q1(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/av;->q()Landroid/content/Context;

    move-result-object p1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ul;->h0:Z

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ul;->d0:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ul;->e0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->q0:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->k0:Z

    goto :goto_3

    :goto_2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->k0:Z

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/ul;->n0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Landroidx/appcompat/view/menu/ul;->i1(ZZZ)V

    :cond_1
    return-void
.end method

.method public final p1()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ul;->j1()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q1(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public r0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->r0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/ul;->f0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/ul;->g0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->h0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ul;->i0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroidx/appcompat/view/menu/ul;->j0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public s0()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/av;->s0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ul;->n0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/h61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/a90;)V

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/k61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/b61;)V

    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/j61;->a(Landroid/view/View;Landroidx/appcompat/view/menu/rr0;)V

    :cond_0
    return-void
.end method

.method public t0()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/av;->t0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public v0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/av;->v0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul;->m0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
